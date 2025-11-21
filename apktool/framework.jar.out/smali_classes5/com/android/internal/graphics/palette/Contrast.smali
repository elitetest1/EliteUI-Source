.class public Lcom/android/internal/graphics/palette/Contrast;
.super Ljava/lang/Object;
.source "Contrast.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


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

.method public static blacklist contrastYs(FF)F
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v1, v0, p0

    if-nez v1, :cond_0

    move p0, p1

    :cond_0
    const/high16 p1, 0x40a00000    # 5.0f

    add-float/2addr v0, p1

    add-float/2addr p0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method public static blacklist darkerY(FF)F
    .locals 3

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, p1, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, p0

    div-float/2addr v0, p1

    float-to-double p0, v0

    const-wide/16 v1, 0x0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist lighterY(FF)F
    .locals 4

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr p0, v0

    mul-float/2addr p1, p0

    const/high16 p0, -0x3f600000    # -5.0f

    add-float/2addr p1, p0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    return p1
.end method

.method public static blacklist lstarToY(F)F
    .locals 7

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p0, v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-lez v0, :cond_0

    float-to-double v3, p0

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x405d000000000000L    # 116.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_0
    mul-double/2addr v3, v1

    double-to-float p0, v3

    return p0

    :cond_0
    const v0, 0x4461c000    # 903.0f

    div-float/2addr p0, v0

    float-to-double v3, p0

    goto :goto_0
.end method

.method public static blacklist yToLstar(F)F
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const v0, 0x3c111aa7

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x4461d2f7

    mul-float/2addr p0, v0

    return p0

    :cond_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x42e80000    # 116.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p0, v0

    return p0
.end method
