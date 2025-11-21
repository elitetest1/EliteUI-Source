.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;
.super Ljava/lang/Object;
.source "IUXColorUtils.java"


# static fields
.field public static final blacklist COLOR8_TO_NORMALIZED:F = 0.003921569f

.field static final blacklist GRAYSCALE_THRESHOLD_BRIGHTNESS:F = 0.25f

.field static final blacklist GRAYSCALE_THRESHOLD_SATURATION:F = 0.12f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist HSVToColor([F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([FF)I

    move-result p0

    return p0
.end method

.method public static blacklist HSVToColor([FF)I
    .locals 10

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v2, p0, v1

    const/4 v3, 0x2

    aget p0, p0, v3

    const v4, 0x3b360b61

    mul-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/high16 v6, 0x437f0000    # 255.0f

    if-nez v5, :cond_0

    mul-float/2addr p0, v6

    move v0, p0

    move v1, v0

    goto :goto_3

    :cond_0
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v0, v5

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v7, v5, v2

    mul-float/2addr v7, p0

    int-to-float v8, v0

    sub-float/2addr v4, v8

    mul-float v8, v2, v4

    sub-float v8, v5, v8

    mul-float/2addr v8, p0

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    sub-float/2addr v5, v2

    mul-float/2addr v5, p0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v9, v5

    move v5, p0

    goto :goto_1

    :cond_3
    move v5, p0

    move p0, v7

    move v7, v8

    goto :goto_2

    :cond_4
    move v9, v7

    move v7, p0

    :goto_1
    move p0, v9

    goto :goto_2

    :cond_5
    move v5, v7

    move v7, p0

    move p0, v8

    goto :goto_2

    :cond_6
    move v9, v7

    move v7, v5

    move v5, v9

    :goto_2
    mul-float/2addr p0, v6

    mul-float v0, v7, v6

    mul-float v1, v5, v6

    :goto_3
    mul-float/2addr p1, v6

    float-to-int p1, p1

    float-to-int p0, p0

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist addColorColor(II)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist argb(IIII)I
    .locals 1

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, 0xff0000

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    const p2, 0xff00

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist caculateLuminosity(I)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(III)F

    move-result p0

    return p0
.end method

.method public static blacklist caculateLuminosity(III)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p0, p0

    const v0, 0x3e59b3d0    # 0.2126f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    const v0, 0x3f371759    # 0.7152f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    int-to-float p1, p2

    const p2, 0x3d93dd98    # 0.0722f

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    const p1, 0x3b808081

    mul-float/2addr p0, p1

    return p0
.end method

.method public static blacklist caculateLuminosity2(I)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(III)F

    move-result p0

    return p0
.end method

.method public static blacklist caculateLuminosity2(III)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p0, p0

    const v0, 0x3e991687    # 0.299f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    const v0, 0x3f1645a2    # 0.587f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    int-to-float p1, p2

    const p2, 0x3de978d5    # 0.114f

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static blacklist calculateGrayScaleColor(I)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateGrayScaleColor(III)F

    move-result p0

    return p0
.end method

.method public static blacklist calculateGrayScaleColor(III)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    int-to-float p0, p0

    const p1, 0x3eaaaa9f

    mul-float/2addr p0, p1

    return p0
.end method

.method public static blacklist calculateHsvPositionFromCornSpace([FF[F)V
    .locals 9

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const v4, 0x3c8efa03

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget p0, p0, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p1

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float p1, v7

    mul-float/2addr p1, p0

    aput p1, p2, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr p1, p0

    aput p1, p2, v4

    aput v1, p2, v0

    return-void
.end method

.method public static blacklist calculateHsvPositionFromCornSpaceDouble([FD[D)V
    .locals 9

    const/4 v0, 0x2

    aget v1, p0, v0

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v4, p0, v3

    const v5, 0x3c8efa03

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x1

    aget p0, p0, v6

    float-to-double v7, p0

    mul-double/2addr v7, v1

    mul-double/2addr v7, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v7

    aput-wide p0, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v7

    aput-wide p0, p3, v6

    aput-wide v1, p3, v0

    return-void
.end method

.method public static blacklist calculateLuminance(I)F
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(III)F

    move-result p0

    return p0
.end method

.method public static blacklist calculateLuminance(III)F
    .locals 17

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide v2, 0x3f70101010101010L    # 0.00392156862745098

    mul-double/2addr v0, v2

    move/from16 v4, p1

    int-to-double v4, v4

    mul-double/2addr v4, v2

    move/from16 v6, p2

    int-to-double v6, v6

    mul-double/2addr v6, v2

    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v0, v2

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v8, :cond_0

    div-double/2addr v0, v9

    goto :goto_0

    :cond_0
    add-double/2addr v0, v15

    div-double/2addr v0, v13

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    cmpg-double v8, v4, v2

    if-gez v8, :cond_1

    div-double/2addr v4, v9

    goto :goto_1

    :cond_1
    add-double/2addr v4, v15

    div-double/2addr v4, v13

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    :goto_1
    cmpg-double v2, v6, v2

    if-gez v2, :cond_2

    div-double/2addr v6, v9

    goto :goto_2

    :cond_2
    add-double/2addr v6, v15

    div-double/2addr v6, v13

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    :goto_2
    const-wide v2, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    const-wide v2, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v6, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist calculateLuminanceInLinearSpace(I)F
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(III)F

    move-result p0

    return p0
.end method

.method public static blacklist calculateLuminanceInLinearSpace(III)F
    .locals 1

    int-to-float p0, p0

    const v0, 0x3e59b3d0    # 0.2126f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    const v0, 0x3f371759    # 0.7152f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    int-to-float p1, p2

    const p2, 0x3d93dd98    # 0.0722f

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    const p1, 0x3b808081

    mul-float/2addr p0, p1

    return p0
.end method

.method public static blacklist checkGayScale(ID)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGayScale([FD)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkGayScale([FD)Z
    .locals 5

    const/4 v0, 0x1

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v3, p1

    cmpg-double v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget p0, p0, v1

    float-to-double v1, p0

    const-wide v3, 0x3fc3333340000000L    # 0.15000000596046448

    add-double/2addr p1, v3

    cmpg-double p0, v1, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist checkGrayScaleWithSV([FFF)Z
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

.method public static blacklist checkSameHSV([F[F)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget p0, p0, v2

    aget p1, p1, v2

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static blacklist checkSameHSV([F[FF)Z
    .locals 9

    const v0, 0x3df5c28f    # 0.12f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkGrayScaleWithSV([FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x3

    new-array v3, v0, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    const v5, 0x3eb33333    # 0.35f

    const/4 v6, 0x1

    aput v5, v3, v6

    const v5, 0x3f266666    # 0.65f

    const/4 v7, 0x2

    aput v5, v3, v7

    const v5, 0x3fddb3d7

    mul-float/2addr v5, p2

    mul-float/2addr v5, v5

    new-array v0, v0, [F

    const/4 v8, 0x0

    aput v8, v0, v1

    aput v8, v0, v6

    aput v4, v0, v7

    mul-float/2addr p2, v4

    mul-float/2addr p2, p2

    if-eqz v2, :cond_0

    move v5, p2

    move-object v3, v0

    :cond_0
    invoke-static {p0, p1, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide p0

    float-to-double v2, v5

    cmpg-double p0, p0, v2

    if-gez p0, :cond_1

    return v6

    :cond_1
    return v1
.end method

.method public static blacklist checkWhite(ID)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->checkWhite([FD)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkWhite([FD)Z
    .locals 5

    const/4 v0, 0x1

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3fa99999a0000000L    # 0.05000000074505806

    add-double/2addr v3, p1

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget p0, p0, v1

    float-to-double v1, p0

    const-wide v3, 0x3fecccccc0000000L    # 0.8999999761581421

    add-double/2addr p1, v3

    cmpl-double p0, v1, p1

    if-ltz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist colorDistanceHSV([F[F[F)D
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aget v3, p0, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v1, v6, v0

    const/4 v1, 0x1

    aput-wide v3, v6, v1

    aget v2, p1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aget v4, p1, v0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    new-array v4, v5, [D

    aput-wide v2, v4, v0

    aput-wide v7, v4, v1

    aget-wide v2, v6, v0

    aget-wide v7, v4, v0

    mul-double/2addr v2, v7

    aget-wide v6, v6, v1

    aget-wide v8, v4, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    aget v4, p1, v1

    aget v6, p0, v1

    sub-float/2addr v4, v6

    float-to-double v6, v4

    aget p1, p1, v5

    aget p0, p0, v5

    sub-float/2addr p1, p0

    float-to-double p0, p1

    aget v0, p2, v0

    aget v1, p2, v1

    add-float v4, v0, v1

    aget p2, p2, v5

    add-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    float-to-double v4, v5

    float-to-double v8, v0

    mul-double/2addr v8, v4

    mul-double/2addr v2, v8

    float-to-double v0, v1

    mul-double/2addr v0, v4

    mul-double/2addr v6, v0

    float-to-double v0, p2

    mul-double/2addr v0, v4

    mul-double/2addr p0, v0

    add-double/2addr v2, v6

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static blacklist colorDistanceHueFast(FF)D
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result p1

    mul-float/2addr v0, v1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist colorDistance_hsv([F[F[F)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist colorDistance_hsv_square2([F[F[F)D
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aget v3, p0, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v1, v6, v0

    const/4 v1, 0x1

    aput-wide v3, v6, v1

    aget v2, p1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aget v4, p1, v0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    new-array v4, v5, [D

    aput-wide v2, v4, v0

    aput-wide v7, v4, v1

    aget-wide v2, v6, v0

    aget-wide v7, v4, v0

    mul-double/2addr v2, v7

    aget-wide v6, v6, v1

    aget-wide v8, v4, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    aget v4, p1, v1

    aget v6, p0, v1

    sub-float/2addr v4, v6

    float-to-double v6, v4

    aget p1, p1, v5

    aget p0, p0, v5

    sub-float/2addr p1, p0

    float-to-double p0, p1

    aget v0, p2, v0

    float-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    mul-double/2addr v2, v8

    aget v0, p2, v1

    float-to-double v0, v0

    mul-double/2addr v0, v10

    mul-double/2addr v6, v0

    aget p2, p2, v5

    float-to-double v0, p2

    mul-double/2addr v0, v10

    mul-double/2addr p0, v0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    mul-double/2addr p0, p0

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static blacklist colorDistance_hue(FF)D
    .locals 8

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const/4 p0, 0x2

    new-array v4, p0, [D

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    new-array p0, p0, [D

    aput-wide v6, p0, v5

    aput-wide v0, p0, v2

    aget-wide v0, v4, v5

    aget-wide v5, p0, v5

    mul-double/2addr v0, v5

    aget-wide v3, v4, v2

    aget-wide p0, p0, v2

    mul-double/2addr v3, p0

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist colorDistance_hue([F[F)D
    .locals 1

    const/4 v0, 0x0

    aget p0, p0, v0

    aget p1, p1, v0

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hue(FF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist colorDistance_rgb(II)D
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

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist colorDistance_rgb_sqaure2(II)D
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

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist colorToHSV(III[F)V
    .locals 9

    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-float v0, v0

    int-to-float v1, p2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-le p0, p1, :cond_2

    move v2, p0

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    int-to-float v2, v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    sub-float v0, v1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    cmpl-float v3, v0, v2

    const/high16 v7, 0x437f0000    # 255.0f

    if-nez v3, :cond_4

    aput v2, p3, v6

    aput v2, p3, v5

    div-float/2addr v1, v7

    aput v1, p3, v4

    return-void

    :cond_4
    div-float v3, v0, v1

    int-to-float v8, p0

    cmpl-float v8, v8, v1

    if-nez v8, :cond_5

    sub-int/2addr p1, p2

    int-to-float p0, p1

    div-float/2addr p0, v0

    goto :goto_4

    :cond_5
    int-to-float v8, p1

    cmpl-float v8, v8, v1

    if-nez v8, :cond_6

    sub-int/2addr p2, p0

    int-to-float p0, p2

    div-float/2addr p0, v0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_6
    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/high16 p1, 0x40800000    # 4.0f

    :goto_3
    add-float/2addr p0, p1

    :goto_4
    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p0, p1

    cmpg-float p1, p0, v2

    if-gez p1, :cond_7

    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr p0, p1

    :cond_7
    move v2, p0

    div-float p0, v1, v7

    goto :goto_5

    :cond_8
    move p0, v2

    move v3, p0

    :goto_5
    aput v2, p3, v6

    aput v3, p3, v5

    aput p0, p3, v4

    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(III[F)V

    return-void
.end method

.method public static blacklist combinAlphaIntoIntColor(II)I
    .locals 1

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist convertDpToPixel(F)I
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static blacklist convertHsv2CornSpace([FF[F)V
    .locals 5

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget p0, p0, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p1

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result p1

    mul-float/2addr p1, p0

    aput p1, p2, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result p1

    mul-float/2addr p1, p0

    aput p1, p2, v4

    aput v1, p2, v0

    return-void
.end method

.method public static blacklist convertPixelsToDp(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static blacklist copyHSVToHSV([F[F)V
    .locals 2

    array-length v0, p1

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist getAlphaRatio(I)F
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3b808081

    mul-float/2addr p0, v0

    return p0
.end method

.method public static blacklist getAverageColor([I)I
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_0
    const v9, 0xff00

    const/high16 v10, 0xff0000

    if-ge v0, v2, :cond_1

    aget v11, p0, v0

    and-int/2addr v10, v11

    int-to-long v12, v10

    add-long/2addr v3, v12

    and-int/2addr v9, v11

    int-to-long v9, v9

    add-long/2addr v5, v9

    and-int/lit16 v9, v11, 0xff

    int-to-long v9, v9

    add-long/2addr v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long v0, v1

    div-long/2addr v3, v0

    long-to-int p0, v3

    and-int/2addr p0, v10

    div-long/2addr v5, v0

    long-to-int v2, v5

    and-int/2addr v2, v9

    div-long/2addr v7, v0

    long-to-int v0, v7

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    or-int/2addr p0, v2

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist getAverageHSV([I)[F
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result p0

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    return-object v0
.end method

.method public static blacklist getAvgHSVFromTwoHSV([F[F)[F
    .locals 6

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-float v3, v1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    add-float/2addr v3, v2

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v3, v1

    if-ltz v2, :cond_0

    sub-float/2addr v3, v1

    :cond_0
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v5, p1, v1

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    const/4 v5, 0x2

    aget p0, p0, v5

    aget p1, p1, v5

    add-float/2addr p0, p1

    mul-float/2addr p0, v4

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v3, p1, v0

    aput v2, p1, v1

    aput p0, p1, v5

    return-object p1
.end method

.method public static blacklist getBlueRatio(I)F
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3b808081

    mul-float/2addr p0, v0

    return p0
.end method

.method public static blacklist getColorFromChannelValue(I)I
    .locals 0

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist getColorFromLuminance(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist getCopiedHSV([F)[F
    .locals 6

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v1, v5, v0

    aput v3, v5, v2

    aput p0, v5, v4

    return-object v5
.end method

.method public static blacklist getGammaCorrectedValue(F)F
    .locals 4

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    float-to-double v0, p0

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    :goto_0
    double-to-float p0, v0

    return p0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static blacklist getGammaCorrectionFromValue(D)D
    .locals 2

    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p0, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p0, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist getGreenRatio(I)F
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3b808081

    mul-float/2addr p0, v0

    return p0
.end method

.method public static blacklist getHSVFromColor(I)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-object v0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[F)F
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    sub-float/2addr p0, p1

    invoke-static {v1, v2, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[FF)F
    .locals 2

    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object p0

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p0, p2

    aget p2, p1, p2

    sub-float/2addr v0, p2

    const/4 p2, 0x1

    aget v1, p0, p2

    aget p2, p1, p2

    sub-float/2addr v1, p2

    const/4 p2, 0x2

    aget p0, p0, p2

    aget p1, p1, p2

    sub-float/2addr p0, p1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpace([F[FF[F[F)F
    .locals 4

    const/4 p3, 0x2

    aget p4, p0, p3

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    mul-float/2addr p0, p4

    mul-float/2addr p0, p2

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v3

    mul-float/2addr v3, p0

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v1, p0

    aget p0, p1, p3

    aget p3, p1, v0

    aget p1, p1, v2

    mul-float/2addr p1, p0

    mul-float/2addr p1, p2

    invoke-static {p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result p3

    mul-float/2addr p3, p1

    sub-float/2addr v3, p2

    sub-float/2addr v1, p3

    sub-float/2addr p4, p0

    invoke-static {v3, v1, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDouble([F[FF)D
    .locals 2

    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object p0

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvPositionFromCornSpace([FF)[F

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p0, p2

    aget p2, p1, p2

    sub-float/2addr v0, p2

    const/4 p2, 0x1

    aget v1, p0, p2

    aget p2, p1, p2

    sub-float/2addr v1, p2

    const/4 p2, 0x2

    aget p0, p0, p2

    aget p1, p1, p2

    sub-float/2addr p0, p1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDouble([F[FF[F[F)D
    .locals 0

    invoke-static {p0, p2, p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    invoke-static {p1, p2, p4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    const/4 p0, 0x0

    aget p1, p3, p0

    aget p0, p4, p0

    sub-float/2addr p1, p0

    const/4 p0, 0x1

    aget p2, p3, p0

    aget p0, p4, p0

    sub-float/2addr p2, p0

    const/4 p0, 0x2

    aget p3, p3, p0

    aget p0, p4, p0

    sub-float/2addr p3, p0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static blacklist getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D
    .locals 6

    const/4 v0, 0x2

    aget v1, p0, v0

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget p0, p0, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v5

    mul-float/2addr v5, p0

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v3

    mul-float/2addr v3, p0

    aget p0, p1, v0

    aget v0, p1, v2

    aget p1, p1, v4

    mul-float/2addr p1, p0

    mul-float/2addr p1, p2

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v0

    mul-float/2addr v0, p1

    sub-float/2addr v5, p2

    sub-float/2addr v3, v0

    sub-float/2addr v1, p0

    invoke-static {v5, v3, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(FFF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static blacklist getHsvPositionFromCornSpace([FF)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpace([FF[F)V

    return-object v0
.end method

.method public static blacklist getHsvPositionFromCornSpaceDouble([FD)[D
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateHsvPositionFromCornSpaceDouble([FD[D)V

    return-object v0
.end method

.method public static blacklist getHumanEyeBasedHueNormalizedDistance(F)F
    .locals 3

    const/high16 v0, 0x437c0000    # 252.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    const v0, 0x43bb3334    # 374.40002f

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p0, v0

    const/high16 v2, 0x42900000    # 72.0f

    if-lez v1, :cond_1

    sub-float/2addr p0, v0

    div-float/2addr p0, v2

    const v0, 0x42c26667    # 97.200005f

    mul-float/2addr v0, p0

    const p0, 0x438a999a    # 277.2f

    add-float/2addr p0, v0

    goto :goto_0

    :cond_1
    cmpl-float v0, p0, v2

    if-lez v0, :cond_2

    sub-float/2addr p0, v2

    const/high16 v0, 0x42d80000    # 108.0f

    div-float/2addr p0, v0

    const v0, 0x434d3333    # 205.2f

    mul-float/2addr v0, p0

    add-float p0, v0, v2

    :cond_2
    :goto_0
    const v0, 0x43f13334    # 482.40002f

    div-float/2addr p0, v0

    return p0
.end method

.method public static blacklist getInterpolatedColorHSVBased([F[FF)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedHSV([F[FF)[F

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static blacklist getInterpolatedHSV([F[FF)[F
    .locals 15

    move/from16 v0, p2

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aget v3, p0, v2

    aget v4, p1, v2

    cmpl-float v4, v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_0

    aput v3, v1, v2

    goto/16 :goto_1

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v3

    float-to-double v3, v3

    aget v7, p0, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    float-to-double v7, v7

    new-array v9, v5, [D

    aput-wide v3, v9, v2

    aput-wide v7, v9, v6

    aget v3, p1, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v3

    float-to-double v3, v3

    aget v7, p1, v2

    invoke-static {v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v7

    float-to-double v7, v7

    new-array v10, v5, [D

    aput-wide v3, v10, v2

    aput-wide v7, v10, v6

    aget v3, p0, v2

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    aget-wide v7, v10, v2

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->cos(F)F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v7, v11

    aget-wide v11, v10, v6

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sin(F)F

    move-result v3

    float-to-double v13, v3

    mul-double/2addr v11, v13

    add-double/2addr v7, v11

    const-wide/16 v11, 0x0

    cmpl-double v3, v7, v11

    if-ltz v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    aget-wide v7, v9, v2

    aget-wide v11, v10, v2

    mul-double/2addr v7, v11

    aget-wide v11, v9, v6

    aget-wide v9, v10, v6

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    float-to-double v9, v0

    mul-double/2addr v7, v9

    if-eqz v3, :cond_2

    aget v3, p0, v2

    float-to-double v9, v3

    add-double/2addr v9, v7

    double-to-float v3, v9

    aput v3, v1, v2

    cmpl-float v7, v3, v4

    if-lez v7, :cond_3

    sub-float/2addr v3, v4

    aput v3, v1, v2

    goto :goto_1

    :cond_2
    aget v3, p0, v2

    float-to-double v9, v3

    sub-double/2addr v9, v7

    double-to-float v3, v9

    aput v3, v1, v2

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    add-float/2addr v3, v4

    aput v3, v1, v2

    :cond_3
    :goto_1
    aget v2, p0, v6

    aget v3, p1, v6

    invoke-static {v0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v6

    aget p0, p0, v5

    aget v2, p1, v5

    invoke-static {v0, p0, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result p0

    aput p0, v1, v5

    return-object v1
.end method

.method public static blacklist getInverseHSV([F)[F
    .locals 6

    const/4 v0, 0x0

    aget v1, p0, v0

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v1, v5, v0

    aput v3, v5, v2

    aput p0, v5, v4

    return-object v5
.end method

.method public static blacklist getRGBFromColor(I)[I
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRedRatio(I)F
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3b808081

    mul-float/2addr p0, v0

    return p0
.end method

.method public static blacklist hsvDistanceSquare2([F[F[F)D
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aget v3, p0, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v1, v6, v0

    const/4 v1, 0x1

    aput-wide v3, v6, v1

    aget v2, p1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aget v4, p1, v0

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    new-array v4, v5, [D

    aput-wide v2, v4, v0

    aput-wide v7, v4, v1

    aget-wide v2, v6, v0

    aget-wide v7, v4, v0

    mul-double/2addr v2, v7

    aget-wide v6, v6, v1

    aget-wide v8, v4, v1

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    aget v4, p1, v1

    aget v6, p0, v1

    sub-float/2addr v4, v6

    float-to-double v6, v4

    aget p1, p1, v5

    aget p0, p0, v5

    sub-float/2addr p1, p0

    float-to-double p0, p1

    aget v0, p2, v0

    float-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    mul-double/2addr v2, v8

    aget v0, p2, v1

    float-to-double v0, v0

    mul-double/2addr v0, v10

    mul-double/2addr v6, v0

    aget p2, p2, v5

    float-to-double v0, p2

    mul-double/2addr v0, v10

    mul-double/2addr p0, v0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    mul-double/2addr p0, p0

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static blacklist interpolateHSV([F[FF)[F
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, p2

    aget v3, p0, v0

    aget v4, p1, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    add-float/2addr v3, v2

    goto :goto_0

    :cond_0
    add-float/2addr v3, v1

    cmpl-float v1, v3, v2

    if-ltz v1, :cond_2

    sub-float/2addr v3, v2

    goto :goto_0

    :cond_1
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p2

    add-float v3, v1, v2

    :cond_2
    :goto_0
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v4, p1, v1

    sub-float/2addr v4, v2

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v3, p1, v0

    aput v2, p1, v1

    aput p0, p1, v4

    return-object p1
.end method

.method public static blacklist multipleColorValue(IF)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist resetHSVBlack([F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v1, p0, v0

    return-void
.end method

.method public static blacklist rgb(III)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist setHSV([FFFF)V
    .locals 1

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    return-void
.end method


# virtual methods
.method blacklist getGradation(IIIIF)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v2, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;IIIFI)V

    new-instance p0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    new-instance p1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p0, p5, p5, p3, p4}, Landroid/graphics/drawable/PaintDrawable;->setBounds(IIII)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/PaintDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method
