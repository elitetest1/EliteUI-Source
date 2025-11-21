.class public Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;
.super Ljava/lang/Object;
.source "CubicEaseOut.java"

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
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;->out(F)F

    move-result p0

    return p0
.end method
