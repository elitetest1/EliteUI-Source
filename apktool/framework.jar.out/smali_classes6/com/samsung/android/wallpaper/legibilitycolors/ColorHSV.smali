.class public Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;
.super Ljava/lang/Object;
.source "ColorHSV.java"


# instance fields
.field blacklist avgColor:I

.field blacklist avgH:F

.field blacklist avgS:F

.field blacklist avgV:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method

.method public static blacklist colorToHSV(I[F)V
    .locals 7

    const v0, 0xffffff

    and-int/2addr v0, p0

    shr-int/lit8 v1, v0, 0x10

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v3, v2

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_4

    cmpl-float v5, v2, v4

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_2

    :cond_0
    div-float v5, v2, v3

    int-to-float v6, v1

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    sub-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v2

    goto :goto_1

    :cond_1
    int-to-float v6, v0

    cmpl-float v6, v6, v3

    if-nez v6, :cond_2

    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr p0, v2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    int-to-float p0, v1

    div-float/2addr p0, v2

    const/high16 v0, 0x40800000    # 4.0f

    :goto_0
    add-float/2addr p0, v0

    :goto_1
    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr p0, v0

    cmpg-float v0, p0, v4

    if-gez v0, :cond_3

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p0, v0

    :cond_3
    move v4, p0

    :goto_2
    const/high16 p0, 0x437f0000    # 255.0f

    div-float p0, v3, p0

    goto :goto_3

    :cond_4
    move p0, v4

    move v5, p0

    :goto_3
    const/4 v0, 0x0

    aput v4, p1, v0

    const/4 v0, 0x1

    aput v5, p1, v0

    const/4 v0, 0x2

    aput p0, p1, v0

    return-void
.end method


# virtual methods
.method public blacklist calcAvgColor([I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getAverageColor([I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    const/4 p1, 0x1

    aget p1, v0, p1

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    const/4 p1, 0x2

    aget p1, v0, p1

    iput p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method

.method public blacklist getAvgColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgColor:I

    return p0
.end method

.method public blacklist getAvgH()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    return p0
.end method

.method public blacklist getAvgS()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    return p0
.end method

.method public blacklist getAvgV()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return p0
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgH:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgS:F

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->avgV:F

    return-void
.end method
