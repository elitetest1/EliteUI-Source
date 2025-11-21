.class public final Lcom/android/internal/dynamicanimation/animation/SpringAnimation;
.super Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/android/internal/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist UNSET:F = 3.4028235E38f


# instance fields
.field private blacklist mEndRequested:Z

.field private blacklist mPendingPosition:F

.field private blacklist mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/util/FloatProperty;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p3}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private blacklist sanityCheck()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist animateToFinalPosition(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public blacklist canSkipToEnd()Z
    .locals 4

    iget-object p0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist cancel()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-direct {v0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    :goto_0
    iput v1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_1
    return-void
.end method

.method blacklist getAcceleration(FF)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public blacklist getSpring()Lcom/android/internal/dynamicanimation/animation/SpringForce;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method blacklist isAtEquilibrium(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->isAtEquilibrium(FF)Z

    move-result p0

    return p0
.end method

.method public blacklist setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method blacklist setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public blacklist skipToEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist start()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->sanityCheck()V

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setValueThreshold(D)V

    invoke-super {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method blacklist updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v4, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iput-boolean v3, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return v2

    :cond_1
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget-object v6, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v7, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget-object v13, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v6, v1

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v8, v1

    move-wide/from16 v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_0
    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v5, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput v4, v0, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method
