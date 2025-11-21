.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
.super Ljava/lang/Object;
.source "MonotonicSpline.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private blacklist mExtrapolate:Z

.field blacklist mSlopeTemp:[F

.field private blacklist mT:[F

.field private blacklist mTangent:[F

.field private blacklist mY:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    array-length p1, p2

    new-array v2, p1, [F

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_0

    int-to-float v4, v3

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    array-length v2, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mSlopeTemp:[F

    add-int/lit8 v0, v2, -0x1

    new-array v3, v0, [F

    new-array v4, v2, [F

    move v5, v1

    :goto_1
    if-ge v5, v0, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget v7, p1, v6

    aget v8, p1, v5

    sub-float/2addr v7, v8

    aget v8, p2, v6

    aget v9, p2, v5

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    aput v8, v3, v5

    if-nez v5, :cond_2

    aput v8, v4, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v5, -0x1

    aget v7, v3, v7

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    aput v7, v4, v5

    :goto_2
    move v5, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x2

    aget p1, v3, v2

    aput p1, v4, v0

    :goto_3
    if-ge v1, v0, :cond_6

    aget p1, v3, v1

    float-to-double v5, p1

    const-wide/16 v7, 0x0

    cmpl-double p2, v5, v7

    if-nez p2, :cond_4

    const/4 p1, 0x0

    aput p1, v4, v1

    add-int/lit8 p2, v1, 0x1

    aput p1, v4, p2

    goto :goto_4

    :cond_4
    aget p2, v4, v1

    div-float/2addr p2, p1

    add-int/lit8 v2, v1, 0x1

    aget v5, v4, v2

    div-float/2addr v5, p1

    float-to-double v6, p2

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float p1, v6

    float-to-double v6, p1

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v6, p1

    mul-float/2addr p2, v6

    aget p1, v3, v1

    mul-float/2addr p2, p1

    aput p2, v4, v1

    mul-float/2addr v6, v5

    aget p1, v3, v1

    mul-float/2addr v6, p1

    aput v6, v4, v2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    return-void
.end method

.method private static blacklist diff(FFFFFF)F
    .locals 4

    mul-float v0, p1, p1

    const/high16 v1, -0x3f400000    # -6.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v3, p1, v2

    mul-float/2addr p3, v3

    add-float/2addr v1, p3

    mul-float/2addr v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p2, p0

    mul-float p3, p2, p5

    mul-float/2addr p3, v0

    add-float/2addr v1, p3

    mul-float/2addr p2, p4

    mul-float/2addr p2, v0

    add-float/2addr v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p2, p0

    mul-float/2addr p2, p5

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p2, p0

    mul-float/2addr p2, p4

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    mul-float/2addr p0, p4

    add-float/2addr v1, p0

    return v1
.end method

.method private static blacklist interpolate(FFFFFF)F
    .locals 5

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v2, v1

    mul-float/2addr v2, p3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    mul-float/2addr p3, v3

    add-float/2addr v2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float v4, v1, p3

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    add-float/2addr v2, p2

    mul-float/2addr p5, p0

    mul-float p2, p5, v1

    add-float/2addr v2, p2

    mul-float p2, p0, p4

    mul-float/2addr v1, p2

    add-float/2addr v2, v1

    mul-float/2addr p5, v0

    sub-float/2addr v2, p5

    mul-float/2addr p0, p3

    mul-float/2addr p0, p4

    mul-float/2addr p0, v0

    sub-float/2addr v2, p0

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    return v2
.end method


# virtual methods
.method public blacklist getArray()[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    return-object p0
.end method

.method public blacklist getPos(F)F
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v1, v0

    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget p0, p0, v3

    :goto_0
    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget p0, p0, v2

    goto :goto_0

    :cond_1
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget p0, p0, v3

    return p0

    :cond_2
    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget p0, p0, v2

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v0, v3

    cmpl-float v4, p1, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v4, v4, v3

    :cond_4
    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v4

    cmpg-float v5, p1, v0

    if-gez v5, :cond_5

    sub-float v6, v0, v2

    sub-float/2addr p1, v2

    div-float v7, p1, v6

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v8, p1, v3

    aget v9, p1, v4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v10, p0, v3

    aget v11, p0, v4

    invoke-static/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->interpolate(FFFFFF)F

    move-result p0

    return p0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSlope(F)F
    .locals 11

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v1, v0

    const/4 v2, 0x0

    aget v3, v0, v2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget v4, v0, v4

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_1

    move p1, v4

    :cond_1
    :goto_0
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-lez v1, :cond_2

    aget v0, v0, v4

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_2

    sub-float v5, v0, v3

    sub-float/2addr p1, v3

    div-float v6, p1, v5

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v7, p1, v2

    aget v8, p1, v4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v9, p0, v2

    aget v10, p0, v4

    invoke-static/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->diff(FFFFFF)F

    move-result p0

    div-float/2addr p0, v5

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getTimePoints()[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    return-object p0
.end method
