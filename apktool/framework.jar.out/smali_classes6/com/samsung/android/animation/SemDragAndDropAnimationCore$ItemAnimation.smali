.class abstract Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemAnimation"
.end annotation


# instance fields
.field blacklist mDuration:I

.field blacklist mProgress:F

.field blacklist mStartTime:J


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist computeAnimation(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    :cond_0
    return-void
.end method

.method blacklist getDuration()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    return p0
.end method

.method blacklist getProgress()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    return p0
.end method

.method abstract blacklist getTransformation(Landroid/view/animation/Transformation;)V
.end method

.method blacklist isFinished()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mStartTime:J

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    int-to-long v4, p0

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
