.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "BackEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist overshot:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    return-void
.end method

.method private blacklist inout(FF)F
    .locals 7

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const-wide v2, 0x3ff8666666666666L    # 1.525

    const/high16 v4, 0x3f000000    # 0.5f

    if-gez v1, :cond_1

    mul-float p0, p1, p1

    float-to-double v5, p2

    mul-double/2addr v5, v2

    double-to-float p2, v5

    add-float/2addr v0, p2

    mul-float/2addr v0, p1

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p0, v4

    return p0

    :cond_1
    sub-float/2addr p1, p0

    mul-float v1, p1, p1

    float-to-double v5, p2

    mul-double/2addr v5, v2

    double-to-float p2, v5

    add-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    mul-float/2addr v1, v4

    return v1
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result p0

    return p0
.end method
