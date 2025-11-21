.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;
.super Ljava/lang/Object;
.source "LegibilityAutoDim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    }
.end annotation


# static fields
.field static blacklist mMaximumComplexityForAutoDim:F = 1.0f

.field static blacklist mMinimumComplexityForAutoDim:F = 0.8f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateAdaptiveDim([Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    .locals 12

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;-><init>()V

    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    sget v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    array-length v3, p0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v10, p0, v6

    iget-object v10, v10, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iget v10, v10, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    cmpl-float v11, v10, v1

    if-lez v11, :cond_0

    cmpl-float v11, v10, v8

    if-lez v11, :cond_0

    move v9, v6

    move v8, v10

    :cond_0
    cmpl-float v11, v10, v7

    if-lez v11, :cond_1

    move v7, v10

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iput v7, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->maxComplexity:F

    iput v8, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->validMaxComplexity:F

    const/high16 v3, -0x1000000

    if-eq v9, v4, :cond_4

    aget-object p0, p0, v9

    iget-object p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    sub-float/2addr v5, v1

    sub-float/2addr v2, v1

    div-float/2addr v5, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentColor:I

    if-ne v3, p0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    iput v4, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    return-object v0

    :cond_4
    iput v5, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    return-object v0
.end method

.method public static blacklist getMaximumComplexityForAutoDim()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    return v0
.end method

.method public static blacklist getMinimumComplexityForAutoDim()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    return v0
.end method

.method public static blacklist setMaximumComplexityForAutoDim(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMaximumComplexityForAutoDim:F

    return-void
.end method

.method public static blacklist setMinimumComplexityForAutoDim(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->mMinimumComplexityForAutoDim:F

    return-void
.end method
