.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;
.super Ljava/lang/Object;
.source "SineEaseOut.java"

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

.method private blacklist out(F)F
    .locals 2

    float-to-double p0, p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineEaseOut;->out(F)F

    move-result p0

    return p0
.end method
