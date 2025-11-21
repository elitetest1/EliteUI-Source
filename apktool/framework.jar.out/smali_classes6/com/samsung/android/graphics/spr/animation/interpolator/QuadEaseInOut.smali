.class public Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;
.super Ljava/lang/Object;
.source "QuadEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist inout(F)F
    .locals 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0

    :cond_0
    sub-float/2addr p1, v0

    sub-float p0, p1, p0

    mul-float/2addr p1, p0

    sub-float/2addr p1, v0

    const/high16 p0, -0x41000000    # -0.5f

    mul-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuadEaseInOut;->inout(F)F

    move-result p0

    return p0
.end method
