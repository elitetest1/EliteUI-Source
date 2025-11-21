.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;
.super Ljava/lang/Object;
.source "AnimatableValue.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mAnimate:Z

.field blacklist mAnimateDuration:F

.field blacklist mAnimateTargetTime:J

.field blacklist mAnimateValueChanges:Z

.field blacklist mId:I

.field blacklist mIsVariable:Z

.field blacklist mLastUpdate:J

.field blacklist mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field blacklist mMotionEasingType:I

.field blacklist mStartRotationX:F

.field blacklist mTargetRotationX:F

.field blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(FZ)V

    return-void
.end method

.method public constructor blacklist <init>(FZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    const/high16 v2, 0x43960000    # 300.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return-void
.end method


# virtual methods
.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F
    .locals 11

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    sub-long v7, v3, v5

    long-to-float v0, v7

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    :goto_0
    iput-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    if-nez v0, :cond_3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float v3, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-nez v3, :cond_4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v7, p1, v0

    const/4 v9, 0x0

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    :cond_4
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    sub-long/2addr v0, v5

    long-to-float p1, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p1

    sub-float v0, v4, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_6

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    :cond_6
    :goto_1
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return p0
.end method

.method public blacklist getValue()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 1

    const-string v0, "AnimatableValue"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "id"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatableValue{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
