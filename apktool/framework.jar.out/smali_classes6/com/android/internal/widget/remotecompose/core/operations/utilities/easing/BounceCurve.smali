.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "BounceCurve.java"


# static fields
.field private static final blacklist D1:F = 2.75f

.field private static final blacklist N1:F = 7.5625f


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;->mType:I

    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 5

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    const p0, 0x3eba2e8c

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40f20000    # 7.5625f

    if-gez p0, :cond_1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p1

    const p0, 0x3f3bbbbc

    mul-float/2addr v0, p0

    return v0

    :cond_1
    const p0, 0x3f3a2e8c

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f400000    # 0.75f

    add-float/2addr v0, p0

    return v0

    :cond_2
    float-to-double v1, p1

    const-wide v3, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p0, v1, v3

    if-gez p0, :cond_3

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f700000    # 0.9375f

    add-float/2addr v0, p0

    return v0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, p0

    if-gtz v1, :cond_4

    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, p0

    return v0

    :cond_4
    return p0
.end method

.method public blacklist getDiff(F)F
    .locals 6

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x41720000    # 15.125f

    if-gez v0, :cond_1

    mul-float/2addr p1, v1

    const p0, 0x3fae8ba3

    div-float/2addr p1, p0

    const p0, 0x3f3bbbbc

    add-float/2addr p1, p0

    return p1

    :cond_1
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    return p1

    :cond_2
    float-to-double v2, p1

    const-wide v4, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    return p1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    return p1

    :cond_4
    return p0
.end method
