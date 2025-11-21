.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSelectHighlightingAnimation"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FROM_X:F = 1.0f

.field private static final blacklist DEFAULT_FROM_Y:F = 1.0f

.field private static final blacklist DEFAULT_TO_X:F = 1.08f

.field private static final blacklist DEFAULT_TO_Y:F = 1.08f


# instance fields
.field private blacklist mFromX:F

.field private blacklist mFromY:F

.field private blacklist mHalfOfAnimationPassed:Z

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mToX:F

.field private blacklist mToY:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    const v0, 0x3f8a3d71    # 1.08f

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method

.method private blacklist switchToScaleDown()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method


# virtual methods
.method blacklist computeAnimation(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    :cond_0
    return-void
.end method

.method blacklist getTransformation(Landroid/view/animation/Transformation;)V
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    :goto_1
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_4

    :cond_3
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    :cond_4
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method blacklist setScaleUpParameters(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iput p5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    iput p6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    return-void
.end method

.method blacklist setStartAndDuration(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mStartTime:J

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    if-nez p1, :cond_0

    const/16 p1, 0x96

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    :cond_0
    return-void
.end method
