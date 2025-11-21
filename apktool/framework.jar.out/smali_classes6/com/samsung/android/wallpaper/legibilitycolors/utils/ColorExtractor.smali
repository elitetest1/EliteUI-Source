.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    }
.end annotation


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final blacklist VERSION:Ljava/lang/String; = "1.0.0"

.field static blacklist sBrightnessThresholdForGrayscale:F = 0.25f

.field static blacklist sClusterGrayscaleDistanceWeight:[F = null

.field static blacklist sClusterHsvDistanceWeight:[F = null

.field static blacklist sSaturationThresholdForGrayscale:F = 0.12f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkGayScaleWithSV([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float p1, v1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    aget p0, p0, p1

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method protected static blacklist colorDistance_hsv_square2([F[F[F)F
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    :cond_0
    div-float/2addr v1, v2

    aget v0, p2, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v3, p0, v0

    sub-float/2addr v2, v3

    aget v0, p2, v0

    mul-float/2addr v2, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    aget p0, p2, v0

    mul-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method protected static blacklist colorDistance_rgb_sqaure2(II)F
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;F)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V

    return-void
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const v2, 0x3fddb3d7

    mul-float v2, v2, p1

    mul-float/2addr v2, v2

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p1

    mul-float/2addr v4, v4

    sget v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v7, 0x3

    new-array v8, v7, [F

    new-array v7, v7, [F

    array-length v9, v0

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_7

    aget-object v12, v0, v11

    iget v13, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v12, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v8, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v15, v3

    move/from16 p1, v14

    move v14, v4

    goto :goto_1

    :cond_1
    move-object v15, v1

    move/from16 p1, v14

    move v14, v2

    :goto_1
    aget v16, v8, v10

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v16

    const/high16 v17, 0x43b40000    # 360.0f

    mul-float v16, v16, v17

    aput v16, v8, v10

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v10

    move v10, v11

    :goto_2
    move-object/from16 v18, v1

    if-ge v10, v9, :cond_6

    aget-object v1, v0, v10

    move/from16 v19, v2

    iget v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v1, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v7, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v2

    aget v20, v7, v16

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v20

    mul-float v20, v20, v17

    aput v20, v7, v16

    if-ne v13, v2, :cond_5

    invoke-static {v8, v7, v15}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v20

    move-object/from16 v22, v3

    float-to-double v2, v14

    cmpg-double v2, v20, v2

    if-gez v2, :cond_4

    iget v2, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v2, v3

    if-eqz p2, :cond_3

    iget-object v3, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v20, v4

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v21, v5

    iget v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    goto :goto_3

    :cond_3
    move/from16 v20, v4

    move/from16 v21, v5

    :goto_3
    iput v2, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    move/from16 v3, p1

    iput v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-int/lit8 v1, v9, -0x1

    invoke-static {v0, v10, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;->arrayChangePos([Ljava/lang/Object;II)V

    goto :goto_5

    :cond_4
    move/from16 v3, p1

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v2, v16

    goto :goto_4

    :cond_5
    move-object/from16 v22, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v2, v16

    move/from16 v3, p1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v2

    move/from16 p1, v3

    :goto_5
    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v3, v22

    goto/16 :goto_2

    :cond_6
    move/from16 v19, v2

    :goto_6
    move-object/from16 v22, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v2, v16

    move v10, v2

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v3, v22

    goto/16 :goto_0

    :cond_7
    :goto_7
    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public static blacklist getAverageColorFromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, p0, v2

    iget v7, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpg-float v8, v6, v1

    if-gtz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v4, v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    float-to-int p0, v3

    float-to-int v0, v4

    float-to-int v1, v5

    invoke-static {p0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method static blacklist getAvgColorFromTwoColors(IFIF)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p3, p0

    add-float/2addr p1, p3

    float-to-int p0, p1

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvDistanceWeight()[F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kMeansHsv input bitmap size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | ClusterGroups Num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorExtractor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    new-array v3, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    new-array v4, v2, [I

    new-array v5, v2, [Z

    new-array v6, v2, [[F

    new-array v7, v2, [Z

    new-array v8, v2, [I

    new-array v9, v2, [[J

    sget-object v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    sget-object v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    sget v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v14, 0x3

    new-array v15, v14, [F

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v14, v2, :cond_0

    aget v1, p1, v14

    aput v1, v4, v14

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    const/4 v4, 0x3

    new-array v5, v4, [F

    invoke-static {v1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v5, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v1

    aput-boolean v1, v7, v14

    aput-object v5, v6, v14

    aput v17, v8, v14

    new-array v1, v4, [J

    fill-array-data v1, :array_0

    aput-object v1, v9, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v4, v18

    goto :goto_0

    :cond_0
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v19

    sub-long v4, v4, v19

    move/from16 v1, v17

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v14, v9, v1

    move-wide/from16 v19, v4

    const-wide/16 v4, 0x0

    invoke-static {v14, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v19

    goto :goto_1

    :cond_1
    move-wide/from16 v19, v4

    array-length v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_2
    const/16 v21, 0x2

    const v22, 0xff00

    const/high16 v23, 0xff0000

    const/16 v24, 0x1

    if-ge v4, v1, :cond_6

    aget v0, p0, v4

    ushr-int/lit8 v25, v0, 0x18

    if-gtz v25, :cond_2

    move/from16 v26, v1

    move/from16 v25, v4

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v14, v14, 0x1

    invoke-static {v0, v15}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v15, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v25

    const v26, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v28, v26

    const/16 v27, 0x0

    move/from16 v26, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    move/from16 p1, v1

    aget-object v1, v6, p1

    aget-boolean v29, v7, p1

    if-nez v25, :cond_3

    if-nez v29, :cond_3

    invoke-static {v15, v1, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v1

    cmpg-float v29, v1, v28

    if-gez v29, :cond_4

    move/from16 v27, p1

    move/from16 v28, v1

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    if-eqz v25, :cond_4

    if-eqz v29, :cond_4

    invoke-static {v15, v1, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v1

    cmpg-float v29, v1, v28

    if-gez v29, :cond_4

    move/from16 v27, p1

    move/from16 v28, v1

    move/from16 v5, v24

    :cond_4
    :goto_4
    add-int/lit8 v1, p1, 0x1

    goto :goto_3

    :cond_5
    aget-object v1, v9, v27

    aget v25, v8, v27

    add-int/lit8 v25, v25, 0x1

    aput v25, v8, v27

    const/16 v17, 0x0

    aget-wide v27, v1, v17

    move-object/from16 p1, v1

    and-int v1, v0, v23

    move/from16 v25, v4

    move/from16 v29, v5

    int-to-long v4, v1

    add-long v27, v27, v4

    aput-wide v27, p1, v17

    aget-wide v4, p1, v24

    and-int v1, v0, v22

    move-wide/from16 v27, v4

    int-to-long v4, v1

    add-long v4, v27, v4

    aput-wide v4, p1, v24

    aget-wide v4, p1, v21

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr v4, v0

    aput-wide v4, p1, v21

    move/from16 v5, v29

    :goto_5
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    goto/16 :goto_2

    :cond_6
    const/16 v17, 0x0

    aput-boolean v5, v16, v17

    move/from16 v1, v17

    :goto_6
    if-ge v1, v2, :cond_8

    aget-object v0, v9, v1

    aget v4, v8, v1

    if-nez v4, :cond_7

    move/from16 v0, v17

    move v4, v0

    move v5, v4

    goto :goto_7

    :cond_7
    aget-wide v5, v0, v17

    int-to-long v10, v4

    div-long/2addr v5, v10

    long-to-int v4, v5

    and-int v4, v4, v23

    aget-wide v5, v0, v24

    div-long/2addr v5, v10

    long-to-int v5, v5

    and-int v5, v5, v22

    aget-wide v6, v0, v21

    div-long/2addr v6, v10

    long-to-int v0, v6

    and-int/lit16 v0, v0, 0xff

    :goto_7
    const/high16 v6, -0x1000000

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    aput v0, v18, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    if-lez v14, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v14

    div-float/2addr v0, v1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    move/from16 v14, v17

    :goto_9
    if-ge v14, v2, :cond_a

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v4, v18, v14

    aget v5, v8, v14

    int-to-float v5, v5

    mul-float/2addr v5, v0

    aget-boolean v6, v16, v14

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v1, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ColorExtractor Memory Usage "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorExtractor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v3

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic blacklist lambda$discardSameHSVfromDominantColors$1(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 1

    iget p1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v0, 0x49742400    # 1000000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$kMeansHsv$0(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 1

    iget p1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v0, 0x49742400    # 1000000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$sortColorResult$2(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 0

    iget p1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static blacklist makeClusterGroupColorBandBased()[I
    .locals 14

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v13

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    const v4, -0x777778

    filled-new-array/range {v2 .. v13}, [I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x420a0000    # 34.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x428b0000    # 69.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42f90000    # 124.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43298000    # 169.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x43568000    # 214.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43844000    # 264.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x4390c000    # 289.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_8
    .array-data 4
        0x439fc000    # 319.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased2()[I
    .locals 12

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    const v4, -0x777778

    filled-new-array/range {v2 .. v11}, [I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x42640000    # 57.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x42700000    # 60.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42ea0000    # 117.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43360000    # 182.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x436f0000    # 239.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43958000    # 299.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased3()[I
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v12

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    const v4, -0x777778

    filled-new-array/range {v2 .. v12}, [I

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x42900000    # 72.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42fc0000    # 126.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43340000    # 180.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x437c0000    # 252.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43900000    # 288.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x43a20000    # 324.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased4()[I
    .locals 9

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, -0x1000000

    const/4 v3, 0x1

    aput v1, v0, v3

    const v1, -0x777778

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v1, 0x3

    new-array v5, v1, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v0, v1

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v6, 0x4

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v6, 0x5

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v6, 0x6

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_4

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 v6, 0x7

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_5

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/16 v6, 0x8

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_6

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/16 v6, 0x9

    aput v5, v0, v6

    new-array v5, v1, [F

    fill-array-data v5, :array_7

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/16 v6, 0xa

    aput v5, v0, v6

    sget v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    new-array v7, v1, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0xb

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x42100000    # 36.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0xc

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x42900000    # 72.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0xd

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x42fc0000    # 126.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0xe

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x43340000    # 180.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0xf

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x437c0000    # 252.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0x10

    aput v7, v0, v8

    new-array v7, v1, [F

    const/high16 v8, 0x43900000    # 288.0f

    aput v8, v7, v2

    aput v5, v7, v3

    aput v6, v7, v4

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v8, 0x11

    aput v7, v0, v8

    new-array v1, v1, [F

    const/high16 v7, 0x43a20000    # 324.0f

    aput v7, v1, v2

    aput v5, v1, v3

    aput v6, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x42900000    # 72.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x42fc0000    # 126.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x43340000    # 180.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x437c0000    # 252.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x43900000    # 288.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x43a20000    # 324.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist makeClusterrGroup_preset1(I)[I
    .locals 9

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    new-array v1, p0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, -0x1000000

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, -0x777778

    const/4 v5, 0x2

    aput v2, v1, v5

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_1

    add-int/lit8 v6, v2, -0x3

    int-to-float v6, v6

    add-int/lit8 v7, p0, -0x3

    int-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v8, v7

    mul-float/2addr v6, v8

    new-array v7, v0, [F

    aput v6, v7, v3

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v7, v4

    aput v6, v7, v5

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static blacklist mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v0, v1

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_1

    iget p2, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    iget-boolean p2, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iput-boolean p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget-object v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget v2, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v2, v0

    invoke-static {p2, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHSVFromColor(I)[F

    move-result-object p2

    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    invoke-static {p2, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 p0, 0x0

    iput p0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    return-void
.end method

.method public static blacklist sampleColorsWithBias(Landroid/graphics/Bitmap;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sampleColorsWithBias input bitmap size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | ClusterGroups Num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorExtractor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    array-length v3, v0

    new-array v4, v2, [I

    const/4 v5, 0x3

    new-array v5, v5, [F

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    new-array v8, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v2, :cond_3

    aget-object v11, v1, v10

    iget-object v11, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    aget-object v12, v1, v10

    iget-boolean v12, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v12, :cond_0

    invoke-static {v11, v6, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v12

    if-nez v12, :cond_0

    aget v12, v11, v9

    aget v16, p2, v9

    add-float v12, v12, v16

    move/from16 v16, v9

    const/high16 v9, 0x43b40000    # 360.0f

    invoke-static {v14, v9, v12}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->rangeRevolving(FFF)F

    move-result v9

    aput v9, v5, v16

    aget v9, v11, v15

    aget v12, p2, v15

    add-float/2addr v9, v12

    invoke-static {v14, v13, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v9

    aput v9, v5, v15

    goto :goto_1

    :cond_0
    move/from16 v16, v9

    aget v9, v11, v16

    aput v9, v5, v16

    aget v9, v11, v15

    aput v9, v5, v15

    :goto_1
    const/4 v9, 0x2

    aget v11, v11, v9

    aget v12, p2, v9

    add-float/2addr v11, v12

    invoke-static {v14, v13, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v11

    aput v11, v5, v9

    invoke-static {v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v9

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v12, v16

    move v13, v12

    :goto_2
    if-ge v12, v3, :cond_2

    aget v14, v0, v12

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    if-lez v14, :cond_1

    aget v14, v0, v12

    invoke-static {v14, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_rgb_sqaure2(II)F

    move-result v14

    cmpl-float v15, v11, v14

    if-lez v15, :cond_1

    move v13, v12

    move v11, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    aget v9, v0, v13

    aput v9, v4, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto :goto_0

    :cond_3
    move/from16 v16, v9

    :goto_3
    if-ge v9, v2, :cond_4

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v3, v4, v9

    aget-object v5, v1, v9

    iget v5, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    aget-object v6, v1, v9

    iget-boolean v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    invoke-direct {v0, v3, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v0, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    return-object v8
.end method

.method public static blacklist setBrightnessThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight(FFF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const/4 p0, 0x2

    aput p2, v0, p0

    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight([F)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setGrayscaleDistanceWeight(FFF)V

    return-void
.end method

.method public static blacklist setHsvDistanceWeight(FFF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const/4 p0, 0x2

    aput p2, v0, p0

    return-void
.end method

.method public static blacklist setHsvDistanceWeight([F)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setHsvDistanceWeight(FFF)V

    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    return-void
.end method

.method static blacklist sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method
