.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final greylist-max-o A:F = 0.008856452f

.field private static final greylist-max-o B:F = 7.787037f

.field private static final greylist-max-o C:F = 0.13793103f

.field private static final greylist-max-o D:F = 0.20689656f


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .locals 13

    const/4 p0, 0x0

    aget v0, p1, p0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v1

    aget v1, v1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v3

    aget v3, v3, v1

    div-float/2addr v2, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v5

    aget v5, v5, v3

    div-float/2addr v4, v5

    const v5, 0x3c111aa7

    cmpl-float v6, v0, v5

    const-wide v7, 0x3fd5555555555555L    # 0.3333333333333333

    const v9, 0x3e0d3dcb

    const v10, 0x40f92f68

    if-lez v6, :cond_0

    float-to-double v11, v0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v0, v11

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    :goto_0
    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    float-to-double v11, v2

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v2, v11

    goto :goto_1

    :cond_1
    mul-float/2addr v2, v10

    add-float/2addr v2, v9

    :goto_1
    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    float-to-double v4, v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_2

    :cond_2
    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    :goto_2
    const/high16 v5, 0x42e80000    # 116.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x41800000    # 16.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v6

    const/high16 v6, 0x43480000    # 200.0f

    sub-float/2addr v2, v4

    mul-float/2addr v2, v6

    const/4 v4, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v5, v4, v6}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v4

    aput v4, p1, p0

    const/high16 p0, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v0, p0, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v0

    aput v0, p1, v1

    invoke-static {v2, p0, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result p0

    aput p0, p1, v3

    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    return p0

    :cond_0
    const/high16 p0, 0x43000000    # 128.0f

    return p0
.end method

.method public whitelist getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, -0x3d000000    # -128.0f

    return p0
.end method

.method public whitelist isWideGamut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist toXyz([F)[F
    .locals 9

    const/4 p0, 0x0

    aget v0, p1, p0

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v1, v2}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v0

    aput v0, p1, p0

    const/4 v0, 0x1

    aget v1, p1, v0

    const/high16 v2, -0x3d000000    # -128.0f

    const/high16 v3, 0x43000000    # 128.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x2

    aget v4, p1, v1

    invoke-static {v4, v2, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v2

    aput v2, p1, v1

    aget v3, p1, p0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    aget v4, p1, v0

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    const v5, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v5

    sub-float v2, v3, v2

    const v5, 0x3e53dcb1

    cmpl-float v6, v4, v5

    const v7, 0x3e0d3dcb

    const v8, 0x3e038027

    if-lez v6, :cond_0

    mul-float v6, v4, v4

    mul-float/2addr v6, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v4, v7

    mul-float v6, v4, v8

    :goto_0
    cmpl-float v4, v3, v5

    if-lez v4, :cond_1

    mul-float v4, v3, v3

    mul-float/2addr v4, v3

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v7

    mul-float v4, v3, v8

    :goto_1
    cmpl-float v3, v2, v5

    if-lez v3, :cond_2

    mul-float v3, v2, v2

    mul-float/2addr v3, v2

    goto :goto_2

    :cond_2
    sub-float/2addr v2, v7

    mul-float v3, v2, v8

    :goto_2
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v2

    aget v2, v2, p0

    mul-float/2addr v6, v2

    aput v6, p1, p0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object p0

    aget p0, p0, v0

    mul-float/2addr v4, p0

    aput v4, p1, v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object p0

    aget p0, p0, v1

    mul-float/2addr v3, p0

    aput v3, p1, v1

    return-object p1
.end method
