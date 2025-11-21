.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor whitelist <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p0, 0x0

    array-length v1, v0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public whitelist get(II)F
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aget p0, p0, p1

    return p0
.end method

.method public whitelist getArray()[F
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object p0
.end method

.method public whitelist load(Landroid/renderscript/Matrix3f;)V
    .locals 2

    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object p1

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public whitelist loadIdentity()V
    .locals 3

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, p0, v0

    const/4 v0, 0x2

    aput v2, p0, v0

    const/4 v0, 0x3

    aput v2, p0, v0

    const/4 v0, 0x4

    aput v1, p0, v0

    const/4 v0, 0x5

    aput v2, p0, v0

    const/4 v0, 0x6

    aput v2, p0, v0

    const/4 v0, 0x7

    aput v2, p0, v0

    const/16 v0, 0x8

    aput v1, p0, v0

    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    move v6, v0

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v2, :cond_0

    invoke-virtual {p2, v1, v6}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    invoke-virtual {p1, v6, v0}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v3, v10

    invoke-virtual {p1, v6, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    invoke-virtual {p1, v6, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v8, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v7, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist loadRotate(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, p0, v1

    const/4 v1, 0x1

    neg-float v2, v0

    aput v2, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v0, 0x4

    aput p1, p0, v0

    return-void
.end method

.method public whitelist loadRotate(FFFF)V
    .locals 8

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    div-float v1, v2, v1

    mul-float/2addr p2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    :cond_0
    sub-float/2addr v2, p1

    mul-float v1, p2, p3

    mul-float v3, p3, p4

    mul-float v4, p4, p2

    mul-float v5, p2, v0

    mul-float v6, p3, v0

    mul-float/2addr v0, p4

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float/2addr p2, p2

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    const/4 v7, 0x0

    aput p2, p0, v7

    mul-float/2addr v1, v2

    sub-float p2, v1, v0

    const/4 v7, 0x3

    aput p2, p0, v7

    mul-float/2addr v4, v2

    add-float p2, v4, v6

    const/4 v7, 0x6

    aput p2, p0, v7

    const/4 p2, 0x1

    add-float/2addr v1, v0

    aput v1, p0, p2

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, p1

    const/4 p2, 0x4

    aput p3, p0, p2

    mul-float/2addr v3, v2

    sub-float p2, v3, v5

    const/4 p3, 0x7

    aput p2, p0, p3

    const/4 p2, 0x2

    sub-float/2addr v4, v6

    aput v4, p0, p2

    const/4 p2, 0x5

    add-float/2addr v3, v5

    aput v3, p0, p2

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, p1

    const/16 p1, 0x8

    aput p4, p0, p1

    return-void
.end method

.method public whitelist loadScale(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x4

    aput p2, p0, p1

    return-void
.end method

.method public whitelist loadScale(FFF)V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x4

    aput p2, p0, p1

    const/16 p1, 0x8

    aput p3, p0, p1

    return-void
.end method

.method public whitelist loadTranslate(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x6

    aput p1, p0, v0

    const/4 p1, 0x7

    aput p2, p0, p1

    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist rotate(F)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist rotate(FFFF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist scale(FF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist scale(FFF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist set(IIF)V
    .locals 0

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput p3, p0, p1

    return-void
.end method

.method public whitelist translate(FF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public whitelist transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    aget v5, v3, v4

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v0

    aget v7, v3, v6

    aput v7, v3, v4

    aput v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
