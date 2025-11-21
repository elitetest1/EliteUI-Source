.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslateItemAnimation"
.end annotation


# instance fields
.field private blacklist mDeltaX:I

.field private blacklist mDeltaY:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mOffsetXDest:I

.field private blacklist mOffsetYDest:I


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method blacklist getCurrentTranslateX()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    return v1
.end method

.method blacklist getCurrentTranslateY()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    return v1
.end method

.method blacklist getDestOffsetX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    return p0
.end method

.method blacklist getDestOffsetY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    return p0
.end method

.method blacklist getTransformation(Landroid/view/animation/Transformation;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v0, v0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    sub-float/2addr v0, p0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method blacklist setStartAndDuration(F)V
    .locals 1

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    return-void
.end method

.method blacklist setStartAndDuration(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mStartTime:J

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDuration:I

    if-nez p1, :cond_0

    const/16 p1, 0x12c

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDuration:I

    :cond_0
    return-void
.end method

.method blacklist translate(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    return-void
.end method
