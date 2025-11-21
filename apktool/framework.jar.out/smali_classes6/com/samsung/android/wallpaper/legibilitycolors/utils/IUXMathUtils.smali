.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;
.super Ljava/lang/Object;
.source "IUXMathUtils.java"


# static fields
.field public static final blacklist CHAR_2_NOMALIZED:F = 0.003921569f

.field public static final blacklist DEG_2_RADIAN:F = 0.0174532f

.field public static final blacklist PI:F = 3.1415927f

.field public static final blacklist PI_2:F = 6.2831855f

.field public static final blacklist PI_4:F = 12.566371f

.field public static final blacklist PI_HALF:F = 1.5707964f

.field public static final blacklist RADIAN_2_DEG:F = 57.29578f

.field public static final blacklist TRI_PRECISION:F = 1000.0f

.field public static final blacklist TRI_PRECISION_INT:I = 0x3e8

.field public static final blacklist fZERO:F

.field public static blacklist mMathUtils:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

.field private static final blacklist sCosCache:[F

.field public static final blacklist sRandom:Ljava/util/Random;

.field private static final blacklist sSinCache:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->mMathUtils:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

    const v0, 0x57e40

    new-array v1, v0, [F

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sSinCache:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sCosCache:[F

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->prepare()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist computeAverageValue(FIF)F
    .locals 1

    int-to-float v0, p1

    mul-float/2addr p0, v0

    add-float/2addr p0, p2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static blacklist cos(F)F
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sCosCache:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    aget p0, v0, p0

    return p0
.end method

.method public static blacklist cos(I)F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sCosCache:[F

    mul-int/lit16 p0, p0, 0x3e8

    aget p0, v0, p0

    return p0
.end method

.method public static blacklist distance(DDD)D
    .locals 0

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    mul-double/2addr p4, p4

    add-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist distance(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static blacklist distanceSqrt2(DDD)D
    .locals 0

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    mul-double/2addr p4, p4

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static blacklist distanceSqrt2(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    return p0
.end method

.method public static blacklist findMaxNumber([F[I)F
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, p0, v3

    cmpg-float v6, v1, v5

    if-gez v6, :cond_0

    move v4, v3

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    aput v4, p1, v0

    :cond_2
    return v1
.end method

.method public static blacklist findMinNumber([F[I)F
    .locals 6

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    move v3, v0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget v4, p0, v2

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v3, v2

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    aput v3, p1, v0

    :cond_2
    return v1
.end method

.method public static blacklist gaussFunc(FF)F
    .locals 1

    mul-float/2addr p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p1, p0

    neg-float p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static blacklist getGaussianRangedVal(DD)D
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    sub-double/2addr p2, p0

    mul-double/2addr v0, p2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->mMathUtils:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->mMathUtils:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->mMathUtils:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;

    return-object v0
.end method

.method public static blacklist getNormalizedValueInRange(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static blacklist getRangedVal(FF)F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public static blacklist getRangedVal()I
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getRangedVal(II)I
    .locals 2

    const v0, 0x7fffffff

    if-ge p1, p0, :cond_0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int p1, p0, p1

    rem-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p1, p0

    rem-int/2addr v0, p1

    add-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method public static blacklist getRatioFromRange(FFF)F
    .locals 0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method public static blacklist invPow2(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 p0, p0, 0x2

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist isInRange(FFF)Z
    .locals 0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isZero(FF)Z
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    neg-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist lerp(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public static blacklist lerp(FII)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public static blacklist lerp(FSS)S
    .locals 1

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static blacklist lerpColor(FII)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FII)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FII)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FII)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FII)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static blacklist min(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static blacklist nearZero(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    neg-float p1, p1

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static blacklist prepare()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const v1, 0x57e40

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sSinCache:[F

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const v3, 0x3c8efa03

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v1, v0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sCosCache:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist range(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    cmpg-float p2, p1, p0

    if-gtz p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static blacklist rangeRevolving(FFF)F
    .locals 1

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    rem-float/2addr p2, p1

    :cond_0
    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    rem-float/2addr p2, p1

    add-float/2addr p2, p1

    :cond_1
    return p2
.end method

.method public static blacklist sin(F)F
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sSinCache:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    aget p0, v0, p0

    return p0
.end method

.method public static blacklist sin(I)F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->sSinCache:[F

    mul-int/lit16 p0, p0, 0x3e8

    aget p0, v0, p0

    return p0
.end method

.method public static blacklist trimValue(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static blacklist trimValue(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist distance(DD)D
    .locals 0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist distance(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public blacklist distanceSqrt2(DD)D
    .locals 0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public blacklist distanceSqrt2(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method
