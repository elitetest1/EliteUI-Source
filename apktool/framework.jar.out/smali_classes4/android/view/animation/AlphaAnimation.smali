.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimation.java"


# instance fields
.field private greylist-max-o mFromAlpha:F

.field private greylist-max-o mToAlpha:F


# direct methods
.method public constructor whitelist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    iget p0, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist willChangeBounds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
