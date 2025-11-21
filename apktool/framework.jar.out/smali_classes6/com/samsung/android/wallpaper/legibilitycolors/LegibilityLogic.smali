.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.source "LegibilityLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;,
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LegibilityLogic"

.field static final blacklist mBgBrightnessRangeBlackMax:F = 0.7f

.field static final blacklist mBgBrightnessRangeBlackMin:F = 0.0f

.field static final blacklist mBgBrightnessRangeWhiteMax:F = 0.7f

.field static final blacklist mBgBrightnessRangeWhiteMin:F = 0.0f

.field static final blacklist mBrightnessThresholdForGrayscale:F = 0.25f

.field static final blacklist mSaturationThresholdForGrayscale:F = 0.12f

.field static blacklist mShapeAndColorComplexityRatio:F = 0.6666667f

.field static final blacklist mTextBrightnessRangeBlackMax:F = 0.35f

.field static final blacklist mTextBrightnessRangeBlackMin:F = 0.05f

.field static final blacklist mTextBrightnessRangeWhiteMax:F = 0.98f

.field static final blacklist mTextBrightnessRangeWhiteMin:F = 0.89f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;-><init>()V

    return-void
.end method

.method public static blacklist calculateAdaptiveShadow(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v2, p0, v0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;-><init>()V

    invoke-static {p4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeLuminosityComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F

    move-result v1

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p3, v2, :cond_0

    const/high16 p3, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-static {p3, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeContentContrastDifferentiation(I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F

    move-result p3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeShapeComplexity([III)F

    move-result p0

    iput v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    iput p3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    iput p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    iput-object p4, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    sget p1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    const p2, 0x3ca3d70a    # 0.02f

    sub-float/2addr p0, p2

    const p2, 0x3dcccccc    # 0.099999994f

    div-float/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr p3, v1

    const v1, 0x3f4ccccc    # 0.79999995f

    div-float/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float p3, p4, p3

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p4, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeIn(FFFF)F

    move-result p0

    mul-float v1, p0, p1

    sub-float p1, p4, p1

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const p2, 0x3f4ccccd    # 0.8f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    iget p2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    iput p2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    iput p3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    iput p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    iput p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    return-object v0
.end method

.method public static blacklist calculateAdjustedDominantColors(Landroid/graphics/Bitmap;)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setSaturationThresholdForGrayscale(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setBrightnessThresholdForGrayscale(F)V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterrGroup_preset1(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    const v0, 0x3d8db8bb    # 0.0692f

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;F)V

    return-object p0
.end method

.method public static blacklist calculateDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setSaturationThresholdForGrayscale(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setBrightnessThresholdForGrayscale(F)V

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterGroupColorBandBased2()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, v3, v7, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v0, v2, v3

    new-array v0, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v3

    move v3, v2

    const/4 v2, 0x0

    move v6, v3

    move-object v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v0, v1

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v2, v3

    move v3, v7

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateTotalLegibilityResult([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 16

    move-object/from16 v4, p3

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v1

    const/4 v0, 0x0

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v5, v1, v3

    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-static {v2, v5, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v12

    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iget-object v2, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v9, v2, v0

    iget-object v2, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v10, v2, v3

    iget-object v2, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v11, v2, v6

    aget v13, v1, v0

    aget v14, v1, v3

    aget v15, v1, v6

    invoke-static/range {v8 .. v15}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    if-ne v0, v2, :cond_0

    iget-object v12, v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_0
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p4

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object p4

    new-instance p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-direct {p6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;-><init>()V

    iput-object p1, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {p0, p2, p3, p5, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object p0

    iput-object p0, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iput-object p5, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p5, p0, :cond_0

    const p0, -0x50506

    goto :goto_0

    :cond_0
    const p0, -0xbbbbbc

    :goto_0
    iput p0, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    iget-object p0, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result p0

    invoke-static {p5, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculatedAdaptiveContrastContentsColor(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)I

    move-result p0

    iput p0, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    iput-object p4, p6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    return-object p6
.end method

.method public static blacklist calculatedAdaptiveContrastContentsColor(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result p1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    invoke-static {p1, v2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->getRatioFromRange(FFF)F

    move-result p0

    const p1, 0x3f63d70a    # 0.89f

    const v0, 0x3f7ae148    # 0.98f

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {p0, v2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->getRatioFromRange(FFF)F

    move-result p0

    const p1, 0x3eb33333    # 0.35f

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    :goto_0
    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist computeBrightnessComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 8

    array-length v0, p0

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    array-length v5, p0

    const/4 v6, 0x2

    if-ge v3, v5, :cond_1

    aget-object v5, p0, v3

    iget v5, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aput-object v5, v0, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [F

    aput-object v5, v0, v3

    aget-object v5, p0, v3

    iget v5, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aget-object v7, v0, v3

    invoke-static {v5, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v5, v0, v3

    aget v5, v5, v6

    aget-object v6, p0, v3

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget v3, v3, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aget-object v5, p0, v2

    iget v5, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method public static blacklist computeContentContrastDifferentiation(I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content Luminance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityLogic"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    float-to-double v4, v4

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    iget v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist computeLuminosityComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 9

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    if-ge v4, v0, :cond_1

    aget-object v7, p0, v4

    iget v8, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_0

    aput v6, v1, v4

    goto :goto_1

    :cond_0
    iget v6, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v6

    aput v6, v1, v4

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v3, v0, :cond_3

    aget v4, v1, v3

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget-object v7, p0, v3

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public static blacklist computeShapeComplexity(Landroid/graphics/Bitmap;)F
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v2, p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeShapeComplexity([III)F

    move-result p0

    return p0
.end method

.method public static blacklist computeShapeComplexity([III)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getShapeComplexityConvolution([III)Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;

    move-result-object p0

    const/high16 p1, 0x43000000    # 128.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->getDifferentialValueFromRed(F)F

    move-result p0

    return p0
.end method

.method public static blacklist getInterpolatedContentOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getInterpolatedShadowOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getInterpolatedShadowSize(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getInterpolatedShadowYOffset(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getShapeAndColorComplexityRatio()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    return v0
.end method

.method public static blacklist getShapeComplexityConvolution([III)Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;-><init>([IIILandroid/graphics/Bitmap$Config;)V

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    iput-wide p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/high16 p0, 0x4060000000000000L    # 128.0

    iput-wide p0, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->convertToLuminosity()V

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->highPassFilter(I)[[D

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->computeConvolution([[D)V

    return-object v0
.end method

.method public static blacklist getUnequivalanttColor(II)I
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/16 v2, 0x7f

    if-lt p0, v2, :cond_0

    if-lt p0, p1, :cond_1

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p0, v0

    const v0, -0x50506

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    if-le p0, v0, :cond_2

    add-int/lit8 p0, p1, -0x4

    goto :goto_0

    :cond_0
    if-lt p0, p1, :cond_1

    sub-int/2addr v1, v0

    add-int/2addr p0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    sub-int/2addr p0, v1

    :cond_2
    :goto_0
    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist setShapeAndColorComplexityRatio(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    return-void
.end method
