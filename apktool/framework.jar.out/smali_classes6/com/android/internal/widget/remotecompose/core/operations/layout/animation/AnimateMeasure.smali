.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;
.super Ljava/lang/Object;
.source "AnimateMeasure.java"


# instance fields
.field private final blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field private blacklist mDuration:F

.field private blacklist mDurationVisibilityChange:F

.field private blacklist mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field private blacklist mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field private blacklist mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field private blacklist mMotionEasingType:I

.field private final blacklist mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

.field private blacklist mP:F

.field private blacklist mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

.field private blacklist mStartTime:J

.field private final blacklist mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

.field private blacklist mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field private blacklist mVisibilityEasingType:I

.field private blacklist mVp:F

.field public blacklist paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mStartTime:J

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v7, v4, v11

    const/4 v9, 0x0

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    new-instance v12, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    div-float v14, v4, v11

    const/16 v16, 0x0

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    move-wide/from16 v4, p1

    iput-wide v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mStartTime:J

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move/from16 v5, p10

    iput v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    move/from16 v5, p11

    iput v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    div-float/2addr v2, v11

    div-float/2addr v3, v11

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasingType:I

    const/4 v7, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    move/from16 p8, v2

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p10, v7

    move/from16 p11, v8

    move-object/from16 p9, v9

    invoke-direct/range {p6 .. p11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasingType:I

    const/4 v6, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p7, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p9, v8

    invoke-direct/range {p6 .. p11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 7

    iget-wide v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->update(J)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setX(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v0, v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v4

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    :cond_1
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-interface {v3, p1, v4, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist getHeight()F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getVisibility()F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    return p0

    :cond_1
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float/2addr v2, p0

    return v2
.end method

.method public blacklist getWidth()F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getX()F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getY()F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist isDone()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 8

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$operations$layout$animation$AnimationSpec$ANIMATION:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, v3, v3, v3, v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v4, v7, v4

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->animate(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;F)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mParticleAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->animate(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;F)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$operations$layout$animation$AnimationSpec$ANIMATION:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v5, v1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRotate(FFF)V

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    mul-float v6, v5, v7

    mul-float/2addr v5, v7

    invoke-virtual {p1, v6, v5, v1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixScale(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    sub-float v1, v7, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->saveLayer(FFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist update(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDuration:F

    div-float p2, p1, p2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mDurationVisibilityChange:F

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mP:F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVisibilityEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mVp:F

    return-void
.end method

.method public blacklist updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V
    .locals 4

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getX()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getWidth()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mOriginal:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->getHeight()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p2

    cmpl-float p2, p3, p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p2

    cmpl-float p2, v0, p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    cmpl-float p2, v1, p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result p2

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->mTarget:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    return-void
.end method
