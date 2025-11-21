.class public final Landroid/view/WindowInsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsetsAnimation$Callback;,
        Landroid/view/WindowInsetsAnimation$Bounds;
    }
.end annotation


# instance fields
.field private blacklist mAlpha:F

.field private final blacklist mDurationMillis:J

.field private blacklist mFraction:F

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTypeMask:I


# direct methods
.method public constructor whitelist <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    iput-object p2, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-void
.end method


# virtual methods
.method public whitelist getAlpha()F
    .locals 0

    iget p0, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return p0
.end method

.method public whitelist getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/view/WindowInsetsAnimation;->mDurationMillis:J

    return-wide v0
.end method

.method public whitelist getFraction()F
    .locals 0

    iget p0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return p0
.end method

.method public whitelist getInterpolatedFraction()F
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return p0
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsetsAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public whitelist getTypeMask()I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsetsAnimation;->mTypeMask:I

    return p0
.end method

.method public whitelist setAlpha(F)V
    .locals 0

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mAlpha:F

    return-void
.end method

.method public whitelist setFraction(F)V
    .locals 0

    iput p1, p0, Landroid/view/WindowInsetsAnimation;->mFraction:F

    return-void
.end method
