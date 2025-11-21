.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_GRAYSCALE_THRESHOLD_BRIGHTNESS:F = 0.18f

.field public static final blacklist DEFAULT_GRAYSCALE_THRESHOLD_SATURATION:F = 0.12f

.field static final blacklist LAB_BRIGHTNESS_SCALE:F = 10.0f

.field static final blacklist TAG:Ljava/lang/String; = "ColorPaletteExtractor"

.field static blacklist sBrightnessThresholdForGrayscale:F = 0.18f

.field static blacklist sHsvSpaceHueRadiusValue:F = 1.0f

.field static blacklist sLabSpaceLightnessScale:F = 50.0f

.field static blacklist sMaxHSV:F = 0.0f

.field static blacklist sMaxLab:F = 0.0f

.field static blacklist sMaxRGB:F = 0.0f

.field static blacklist sSaturationThresholdForGrayscale:F = 0.12f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sput v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxRGB:F

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sput v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxLab:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;-><init>()V

    return-void
.end method

.method public static blacklist discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x3

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [D

    new-array v6, v2, [D

    array-length v7, v0

    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-wide v9, 0x4076800000000000L    # 360.0

    if-ne v1, v8, :cond_0

    mul-double v15, p1, v9

    move-wide/from16 v17, v15

    move-wide v15, v9

    move-wide/from16 v8, v17

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    goto :goto_2

    :cond_0
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->RGB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_1

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxRGB:F

    move-wide v15, v9

    float-to-double v9, v8

    mul-double v8, p1, v9

    goto :goto_0

    :cond_1
    move-wide v15, v9

    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_2

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    :goto_1
    float-to-double v8, v8

    mul-double v8, v8, p1

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_3

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxLab:F

    goto :goto_1

    :cond_3
    move-wide/from16 v8, p1

    goto :goto_0

    :goto_2
    new-array v12, v7, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    move-wide/from16 v23, v15

    move/from16 v15, v17

    move/from16 v16, v15

    :goto_3
    if-ge v15, v7, :cond_16

    aget-object v2, v0, v15

    iget v13, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v13, v13, v22

    if-nez v13, :cond_4

    goto/16 :goto_d

    :cond_4
    iget v13, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    sget-object v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v14, :cond_7

    sget-object v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v14, :cond_5

    goto :goto_4

    :cond_5
    sget-object v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v14, :cond_6

    invoke-static {v13, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    :cond_6
    move/from16 v14, v18

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v13

    aget v14, v3, v17

    move/from16 v19, v13

    :goto_5
    add-int/lit8 v13, v15, 0x1

    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v0, v13

    move-wide/from16 v27, v25

    move-object/from16 v25, v5

    const/4 v5, -0x1

    :goto_6
    if-ge v0, v7, :cond_14

    move/from16 v26, v0

    aget-object v0, p0, v26

    move/from16 v29, v10

    iget v10, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v10, v10, v22

    if-nez v10, :cond_8

    goto/16 :goto_c

    :cond_8
    iget v10, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    move/from16 v30, v13

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v13, :cond_a

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v13, :cond_9

    goto :goto_7

    :cond_9
    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v13, :cond_b

    invoke-static {v10, v6}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual {v0, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    :cond_b
    :goto_8
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->ordinal()I

    move-result v13

    move/from16 v32, v10

    move/from16 v31, v11

    if-eqz v13, :cond_11

    const/4 v10, 0x1

    if-eq v13, v10, :cond_10

    const/4 v10, 0x2

    if-eq v13, v10, :cond_f

    const/4 v10, 0x3

    if-eq v13, v10, :cond_c

    :goto_9
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto/16 :goto_a

    :cond_c
    iget-boolean v11, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iget-boolean v0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v11, v0, :cond_e

    iget-boolean v0, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v0, :cond_d

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v0

    sub-float v0, v19, v0

    float-to-double v10, v0

    mul-double/2addr v10, v8

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    mul-double v10, v10, v20

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    goto :goto_a

    :cond_d
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    aget v10, v4, v17

    invoke-static {v14, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v10

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    goto :goto_a

    :cond_e
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    float-to-double v10, v10

    div-double/2addr v0, v10

    const-wide v10, 0x3f947ae140000000L    # 0.019999999552965164

    sub-double/2addr v0, v10

    mul-double v0, v0, v23

    add-double/2addr v0, v8

    const-wide/16 v10, 0x0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide v0, v10

    goto :goto_a

    :cond_f
    aget-wide v0, v25, v17

    sget v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    move-wide/from16 v20, v0

    float-to-double v0, v10

    mul-double v0, v0, v20

    aget-wide v20, v6, v17

    float-to-double v10, v10

    mul-double v20, v20, v10

    sub-double v33, v0, v20

    const/4 v10, 0x1

    aget-wide v0, v25, v10

    aget-wide v20, v6, v10

    sub-double v35, v0, v20

    const/4 v10, 0x2

    aget-wide v0, v25, v10

    aget-wide v20, v6, v10

    sub-double v37, v0, v20

    invoke-static/range {v33 .. v38}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(DDD)D

    move-result-wide v20

    goto :goto_9

    :cond_10
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v20

    goto :goto_9

    :cond_11
    iget v1, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_rgb_sqaure2(II)D

    move-result-wide v20

    goto/16 :goto_9

    :goto_a
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v0, v20, v0

    if-gez v0, :cond_12

    move-wide/from16 v0, v27

    cmpl-double v10, v0, v20

    if-lez v10, :cond_13

    move-wide/from16 v27, v20

    move/from16 v5, v26

    goto :goto_b

    :cond_12
    move-wide/from16 v0, v27

    :cond_13
    move-wide/from16 v27, v0

    :goto_b
    add-int/lit8 v0, v26, 0x1

    move-object/from16 v1, p3

    move/from16 v10, v29

    move/from16 v13, v30

    move/from16 v11, v31

    goto/16 :goto_6

    :cond_14
    move/from16 v29, v10

    :goto_c
    move/from16 v31, v11

    move/from16 v30, v13

    move-wide/from16 v0, v27

    const/4 v2, -0x1

    if-eq v5, v2, :cond_15

    new-instance v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    invoke-direct {v2, v15, v5, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;-><init>(IID)V

    aput-object v2, v12, v15

    const/16 v16, 0x1

    :cond_15
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v18, v14

    move-object/from16 v5, v25

    move/from16 v10, v29

    move/from16 v15, v30

    move/from16 v11, v31

    goto/16 :goto_3

    :cond_16
    :goto_d
    move-object/from16 v25, v5

    move/from16 v29, v10

    move/from16 v31, v11

    if-eqz v16, :cond_21

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;-><init>()V

    invoke-static {v12, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move/from16 v0, v17

    move/from16 v10, v29

    :goto_e
    if-ge v0, v7, :cond_20

    aget-object v1, v12, v0

    if-nez v1, :cond_17

    goto/16 :goto_13

    :cond_17
    iget v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->index:I

    iget v1, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->indexTarget:I

    aget-object v2, p0, v2

    aget-object v1, p0, v1

    iget v5, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, v22

    if-lez v5, :cond_1f

    iget v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, v22

    if-lez v5, :cond_1f

    if-nez p4, :cond_18

    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    move/from16 v26, v0

    :goto_f
    const/4 v0, 0x1

    :goto_10
    const/4 v11, 0x2

    goto/16 :goto_11

    :cond_18
    iget v5, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    iget v11, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    iget-boolean v13, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iget v14, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v15, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v5

    invoke-static {v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v11

    div-float/2addr v15, v14

    iget-boolean v14, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    move/from16 v26, v0

    iget-boolean v0, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v14, v0, :cond_1c

    iget-boolean v0, v2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v0, :cond_1a

    mul-float/2addr v11, v15

    cmpg-float v0, v5, v11

    if-gez v0, :cond_19

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_f

    :cond_19
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_f

    :cond_1a
    const/4 v0, 0x1

    aget v5, v3, v0

    const/4 v11, 0x2

    aget v13, v3, v11

    mul-float/2addr v5, v13

    aget v13, v4, v0

    aget v14, v4, v11

    mul-float/2addr v13, v14

    mul-float/2addr v13, v15

    cmpg-float v5, v5, v13

    if-gez v5, :cond_1b

    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_10

    :cond_1b
    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_10

    :cond_1c
    const/4 v0, 0x1

    if-eqz v13, :cond_1e

    const/4 v11, 0x2

    aget v5, v3, v11

    aget v13, v4, v11

    mul-float/2addr v13, v15

    const v14, 0x3f99999a    # 1.2f

    mul-float/2addr v13, v14

    cmpg-float v5, v5, v13

    if-gez v5, :cond_1d

    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_11

    :cond_1d
    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_11

    :cond_1e
    const/4 v11, 0x2

    sget-object v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v2, v1, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_1f
    move/from16 v26, v0

    const/4 v0, 0x1

    const/4 v11, 0x2

    :goto_12
    add-int/lit8 v1, v26, 0x1

    move v0, v1

    goto/16 :goto_e

    :cond_20
    :goto_13
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

    goto :goto_14

    :cond_21
    move/from16 v10, v29

    :goto_14
    if-eqz v16, :cond_23

    add-int/lit8 v11, v31, 0x1

    const/16 v0, 0x3e8

    move/from16 v1, v31

    if-lt v1, v0, :cond_22

    goto :goto_15

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v15, v23

    move-object/from16 v5, v25

    const/4 v2, 0x3

    goto/16 :goto_2

    :cond_23
    :goto_15
    return v10
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvSpaceClusteringRadiusValue()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    return v0
.end method

.method public static blacklist getHsvSpaceHueRadiusValue()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    return v0
.end method

.method public static blacklist getOnlyColorsFromDominantColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;D)[I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_5

    aget-object v3, p0, v1

    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v5, 0x3c1374bc    # 0.009f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    iget-boolean v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-ltz v5, :cond_3

    aget-object v6, p0, v5

    iget-boolean v7, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    aget v7, v4, v2

    aget v6, v6, v2

    invoke-static {v7, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    cmpg-double v6, v6, p1

    if-gez v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    aget-object p1, p0, v2

    iget-boolean p1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-nez p1, :cond_6

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_8

    new-array p1, p0, [I

    :goto_4
    if-ge v2, p0, :cond_7

    add-int/lit8 p2, p0, -0x1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iget p2, p2, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-object p1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
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

    const-string v1, "ColorPaletteExtractor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1, p2, v3, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    new-array v3, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    new-array v4, v2, [I

    new-array v5, v2, [[F

    new-array v6, v2, [[F

    new-array v7, v2, [I

    new-array v8, v2, [[J

    const/4 v9, 0x3

    new-array v10, v9, [F

    sget v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    sget v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v2, :cond_0

    const/16 p2, 0x0

    new-array v14, v9, [F

    aput-object v14, v6, v15

    new-array v14, v9, [F

    aget v9, v1, v15

    invoke-static {v9, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v14, v11, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    aput-object v14, v5, v15

    aput p2, v7, v15

    const/4 v9, 0x3

    new-array v14, v9, [J

    fill-array-data v14, :array_0

    aput-object v14, v8, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v14

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v16

    sub-long v14, v14, v16

    array-length v9, v0

    move-object/from16 p1, v1

    move-object/from16 v16, v3

    move/from16 v1, p2

    move v3, v1

    :goto_1
    const v17, 0xff00

    const/high16 v18, 0xff0000

    const/16 v19, 0x2

    const/16 v20, 0x1

    if-ge v1, v9, :cond_4

    move/from16 p3, v1

    aget v1, v0, p3

    ushr-int/lit8 v21, v1, 0x18

    if-gtz v21, :cond_1

    move-object/from16 v24, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v10, v11, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    aget v21, v10, p2

    aget v22, v10, v20

    aget v23, v10, v19

    const v24, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v25, p2

    move/from16 p4, v3

    move/from16 v3, v25

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v26, v5, v3

    aget v27, v26, p2

    sub-float v27, v21, v27

    aget v28, v26, v20

    sub-float v28, v22, v28

    aget v26, v26, v19

    sub-float v26, v23, v26

    mul-float v27, v27, v27

    mul-float v28, v28, v28

    add-float v27, v27, v28

    mul-float v26, v26, v26

    add-float v27, v27, v26

    cmpg-float v26, v27, v24

    if-gez v26, :cond_2

    move/from16 v25, v3

    move/from16 v24, v27

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    aget-object v3, v8, v25

    aget v21, v7, v25

    add-int/lit8 v21, v21, 0x1

    aput v21, v7, v25

    aget-wide v21, v3, p2

    move-object/from16 v23, v3

    and-int v3, v1, v18

    move-object/from16 v24, v4

    int-to-long v3, v3

    add-long v21, v21, v3

    aput-wide v21, v23, p2

    aget-wide v3, v23, v20

    move-wide/from16 v21, v3

    and-int v3, v1, v17

    int-to-long v3, v3

    add-long v3, v21, v3

    aput-wide v3, v23, v20

    aget-wide v3, v23, v19

    and-int/lit16 v1, v1, 0xff

    move-wide/from16 v17, v3

    int-to-long v3, v1

    add-long v3, v17, v3

    aput-wide v3, v23, v19

    move/from16 v3, p4

    :goto_3
    add-int/lit8 v1, p3, 0x1

    move-object/from16 v4, v24

    goto/16 :goto_1

    :cond_4
    move-object/from16 v24, v4

    move/from16 v1, p2

    :goto_4
    if-ge v1, v2, :cond_6

    aget-object v4, v8, v1

    aget v5, v7, v1

    if-gtz v5, :cond_5

    move/from16 v4, p2

    move v9, v4

    move v10, v9

    goto :goto_5

    :cond_5
    aget-wide v9, v4, p2

    move-object/from16 p3, v4

    int-to-long v4, v5

    div-long/2addr v9, v4

    long-to-int v9, v9

    and-int v9, v9, v18

    aget-wide v10, p3, v20

    div-long/2addr v10, v4

    long-to-int v10, v10

    and-int v10, v10, v17

    aget-wide v21, p3, v19

    div-long v4, v21, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    :goto_5
    const/high16 v5, -0x1000000

    or-int/2addr v5, v9

    or-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v24, v1

    aget-object v5, v6, v1

    invoke-static {v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    if-lez v3, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    move/from16 v3, p2

    :goto_7
    if-ge v3, v2, :cond_8

    aget-object v4, v6, v3

    invoke-static {v4, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v4

    aget v5, v7, v3

    int-to-float v5, v5

    mul-float/2addr v5, v1

    new-instance v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v9, v24, v3

    invoke-direct {v8, v9, v5, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v8, v16, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ColorExtractor Memory Usage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v1, v14

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " length: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPaletteExtractor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

    return-object v16

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBasedFromHueInterval(F)[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->makeClusterGroupColorBandBasedFromHueInterval(F[F)[I

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBasedFromHueInterval(F[F)[I
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    cmpg-float v3, p0, v2

    if-gez v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr p0, v3

    :cond_0
    move v3, v2

    :goto_0
    const/high16 v4, 0x43b40000    # 360.0f

    cmpg-float v5, v3, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-gez v5, :cond_1

    new-array v4, v1, [F

    aput v3, v4, v8

    aput v9, v4, v7

    aput v9, v4, v6

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v3, p0

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_5

    move v5, v2

    :goto_2
    cmpg-float v10, v5, v4

    if-gez v10, :cond_2

    aget v10, p1, v3

    new-array v11, v1, [F

    aput v5, v11, v8

    aput v10, v11, v7

    aput v9, v11, v6

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, p0

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_3
    cmpg-float v10, v5, v4

    if-gez v10, :cond_3

    aget v10, p1, v3

    new-array v11, v1, [F

    aput v5, v11, v8

    aput v9, v11, v7

    aput v10, v11, v6

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, p0

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_4
    cmpg-float v10, v5, v4

    if-gez v10, :cond_4

    aget v10, p1, v3

    new-array v11, v1, [F

    aput v5, v11, v8

    aput v10, v11, v7

    aput v10, v11, v6

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v5, p0

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    aput v0, p0, v8

    move v8, v1

    goto :goto_5

    :cond_6
    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3eaaa64c    # 0.3333f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f2aa64c    # 0.6666f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist setBrightnessThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    return-void
.end method

.method public static blacklist setHsvSpaceHueRadiusValue(F)V
    .locals 1

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    return-void
.end method

.method public static blacklist setLabSpaceLightnessValue(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    return-void
.end method
