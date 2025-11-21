.class public Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseIn;
.super Ljava/lang/Object;
.source "QuartEaseIn.java"

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

.method private blacklist in(F)F
    .locals 0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseIn;->in(F)F

    move-result p0

    return p0
.end method
