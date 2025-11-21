.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;
.super Ljava/lang/Object;
.source "LegibilityColorByHSV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;,
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;
    }
.end annotation


# static fields
.field private static final blacklist BASE_LUMINANCE:F = 68.0f

.field static final blacklist BLACK_COLOR:I = -0x1000000

.field static final blacklist CONTRAST_BLACK_THRESHOLD:F = 1.34f

.field static final blacklist CONTRAST_WHITE_THRESHOLD:F = 1.24f

.field static final blacklist DIFF_V:F = 0.11f

.field static final blacklist PERCENTAGE_THRESHOLD:F = 0.22f

.field static final blacklist SIMILAR_CONTRAST_THRESHOLD:F = 1.8f

.field static final blacklist SIMILAR_PERCENTAGE_THRESHOLD:F = 0.1f

.field static final blacklist WHITE_COLOR:I = -0x1

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field static blacklist mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV-IA;)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->calcAvgColor([I)V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgH()F

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgS()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgV()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterGroupColorBandBased2()[I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .locals 14

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->initColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    array-length v4, p0

    move v5, v1

    move v6, v2

    move v7, v6

    :goto_0
    const/high16 v8, -0x1000000

    if-ge v5, v4, :cond_3

    aget-object v9, p0, v5

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_0

    goto :goto_1

    :cond_0
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v3, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff3d70a40000000L    # 1.2400000095367432

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v6, v10

    :cond_1
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v8, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff570a3e0000000L    # 1.340000033378601

    cmpg-double v8, v10, v12

    if-gez v8, :cond_2

    iget v8, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput v6, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    iput v7, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    const v4, 0x3e6147ae    # 0.22f

    cmpl-float v5, v6, v4

    const/4 v9, 0x1

    if-lez v5, :cond_7

    cmpl-float v10, v7, v4

    if-lez v10, :cond_7

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    cmpl-float v3, v6, v7

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/high16 v8, 0x3f000000    # 0.5f

    const v10, 0x3e99999a    # 0.3f

    if-ltz v3, :cond_4

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v7, v3

    new-array v3, v5, [F

    aput v2, v3, v1

    aput v2, v3, v9

    aput v7, v3, v4

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_2

    :cond_4
    cmpg-float v3, v6, v7

    if-gez v3, :cond_5

    div-float/2addr v6, v8

    mul-float/2addr v6, v10

    const v3, 0x3f4ccccd    # 0.8f

    sub-float/2addr v3, v6

    new-array v5, v5, [F

    aput v2, v5, v1

    aput v2, v5, v9

    aput v3, v5, v4

    invoke-static {v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_5
    :goto_2
    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    invoke-static {p0, p1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    iput p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    :cond_6
    return-object v0

    :cond_7
    if-lez v5, :cond_8

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput v8, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0

    :cond_8
    cmpl-float p0, v7, v4

    if-lez p0, :cond_9

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0

    :cond_9
    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object v0
.end method

.method private static blacklist checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {p2, v4}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v4

    const-wide v6, 0x3ffcccccc0000000L    # 1.7999999523162842

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    iget v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static blacklist getLABLfromHSV(FFF)F
    .locals 21

    move/from16 v0, p0

    float-to-double v0, v0

    move/from16 v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v6, v4, v2

    move/from16 v8, p2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    div-double/2addr v6, v4

    const-wide/16 v10, 0x0

    cmpl-double v12, v10, v6

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-eqz v12, :cond_2

    cmpl-double v12, v15, v6

    if-nez v12, :cond_0

    move-wide v2, v10

    goto :goto_1

    :cond_0
    cmpg-double v12, v6, v13

    if-gez v12, :cond_1

    mul-double/2addr v2, v8

    mul-double v8, v6, v4

    goto :goto_0

    :cond_1
    mul-double/2addr v2, v8

    mul-double v8, v6, v4

    sub-double v8, v4, v8

    :goto_0
    div-double/2addr v2, v8

    :cond_2
    :goto_1
    double-to-int v8, v0

    div-int/lit8 v8, v8, 0x3c

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    div-double v0, v0, v17

    rem-double/2addr v0, v4

    sub-double/2addr v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v15, v0

    mul-double/2addr v4, v6

    sub-double/2addr v4, v15

    cmpl-double v9, v4, v10

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    neg-double v4, v4

    :goto_2
    sub-double/2addr v15, v4

    mul-double/2addr v15, v2

    mul-double/2addr v13, v15

    sub-double/2addr v6, v13

    mul-double/2addr v0, v15

    packed-switch v8, :pswitch_data_0

    move-wide v0, v10

    move-wide v6, v0

    move-wide v15, v6

    goto :goto_5

    :pswitch_0
    add-double/2addr v15, v6

    add-double/2addr v0, v6

    move-wide/from16 v19, v15

    move-wide v15, v6

    goto :goto_4

    :pswitch_1
    add-double/2addr v0, v6

    add-double/2addr v15, v6

    move-wide/from16 v19, v6

    move-wide v6, v0

    move-wide v0, v15

    move-wide/from16 v15, v19

    goto :goto_5

    :pswitch_2
    add-double/2addr v0, v6

    add-double/2addr v15, v6

    move-wide/from16 v19, v15

    move-wide v15, v0

    goto :goto_3

    :pswitch_3
    add-double/2addr v15, v6

    add-double/2addr v0, v6

    goto :goto_5

    :pswitch_4
    add-double/2addr v0, v6

    add-double/2addr v15, v6

    move-wide/from16 v19, v6

    move-wide v6, v0

    :goto_3
    move-wide/from16 v0, v19

    goto :goto_5

    :pswitch_5
    add-double/2addr v15, v6

    add-double/2addr v0, v6

    move-wide/from16 v19, v15

    move-wide v15, v0

    move-wide v0, v6

    :goto_4
    move-wide/from16 v6, v19

    :goto_5
    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v6, v2

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v12, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v17, 0x3ff0e147ae147ae1L    # 1.055

    if-gez v4, :cond_4

    const-wide v4, 0x3f90d99ba104b946L    # 0.01645510835913313

    mul-double/2addr v6, v4

    goto :goto_6

    :cond_4
    div-double v6, v6, v17

    add-double/2addr v6, v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    :goto_6
    cmpg-double v4, v15, v2

    if-gez v4, :cond_5

    const-wide v4, 0x3fac57a06267cb7fL    # 0.05535603715170278

    mul-double/2addr v15, v4

    goto :goto_7

    :cond_5
    div-double v15, v15, v17

    add-double v4, v15, v12

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v14, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v15, v4, v14

    :goto_7
    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    const-wide v2, 0x3f76e3b07d4a16e4L    # 0.005588235294117647

    goto :goto_8

    :cond_6
    div-double v0, v0, v17

    add-double/2addr v0, v12

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3fb27bb2fec56d5dL    # 0.0722

    :goto_8
    mul-double/2addr v0, v2

    add-double/2addr v6, v15

    add-double/2addr v6, v0

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v6, v0

    if-lez v0, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide v0, 0x401f25f5682a5f56L    # 7.787068965517241

    mul-double/2addr v6, v0

    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr v0, v6

    :goto_9
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 1

    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLABLfromHSV(FFF)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    return-object p0
.end method

.method public static blacklist getLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 0

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    sub-float/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3de147ae    # 0.11f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    sget-object p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p4, p1, :cond_1

    const p0, 0x3f666666    # 0.9f

    cmpg-float p0, p6, p0

    if-gez p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float p0, p7, p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    :cond_1
    return-object p0
.end method
