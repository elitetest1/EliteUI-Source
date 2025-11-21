.class public Landroid/view/animation/TranslateYAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateYAnimation.java"


# instance fields
.field greylist-max-o mTmpValues:[F


# direct methods
.method public constructor greylist-max-o <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    return-void
.end method

.method public constructor greylist <init>(IFIF)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/16 p0, 0x9

    new-array p0, p0, [F

    iput-object p0, v0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget v0, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    iget v1, p0, Landroid/view/animation/TranslateYAnimation;->mToYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    const/4 p2, 0x2

    aget p0, p0, p2

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method
