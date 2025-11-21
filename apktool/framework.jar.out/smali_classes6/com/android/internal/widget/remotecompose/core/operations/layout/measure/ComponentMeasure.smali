.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
.super Ljava/lang/Object;
.source "ComponentMeasure.java"


# instance fields
.field blacklist mH:F

.field blacklist mId:I

.field blacklist mVisibility:I

.field blacklist mW:F

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IFFFF)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    return-void
.end method

.method public constructor blacklist <init>(IFFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    return-void
.end method


# virtual methods
.method public blacklist addVisibilityOverride(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->clearOverride(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->add(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return-void
.end method

.method public blacklist clearVisibilityOverride()V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->clearOverride(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return-void
.end method

.method public blacklist copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V
    .locals 1

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iget p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return-void
.end method

.method public blacklist getH()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    return p0
.end method

.method public blacklist getVisibility()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return p0
.end method

.method public blacklist getW()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    return p0
.end method

.method public blacklist getX()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    return p0
.end method

.method public blacklist getY()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    return p0
.end method

.method public blacklist isGone()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isInvisible()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isVisible()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result p0

    return p0
.end method

.method public blacklist same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    iget p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setH(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    return-void
.end method

.method public blacklist setVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return-void
.end method

.method public blacklist setW(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    return-void
.end method

.method public blacklist setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    return-void
.end method

.method public blacklist setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    return-void
.end method
