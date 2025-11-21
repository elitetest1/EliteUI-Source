.class public Landroid/window/BackProgressAnimator;
.super Ljava/lang/Object;
.source "BackProgressAnimator.java"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackProgressAnimator$ProgressCallback;
    }
.end annotation


# static fields
.field private static final blacklist BUTTON_SPRING_STIFFNESS:F = 100.0f

.field private static final blacklist FLING_FRICTION:F = 8.0f

.field private static final blacklist PROGRESS_PROP:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/window/BackProgressAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SCALE_FACTOR:F = 100.0f


# instance fields
.field private blacklist mBackAnimationInProgress:Z

.field private blacklist mBackCancelledFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFinishRunnable:Ljava/lang/Runnable;

.field private blacklist mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

.field private final blacklist mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

.field private blacklist mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

.field private final blacklist mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

.field private blacklist mLastBackEvent:Landroid/window/BackMotionEvent;

.field private final blacklist mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final blacklist mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private blacklist mProgress:F

.field private final blacklist mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field private blacklist mVelocity:F


# direct methods
.method public static synthetic blacklist $r8$lambda$AI1VajbXHN_9ecXtRjpdejyS_AM(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackProgressAnimator;->lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MHTUtloOIRCL6kWKAy6Hn09BL7s(Landroid/window/BackProgressAnimator;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/window/BackProgressAnimator;->lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProgress(Landroid/window/BackProgressAnimator;)F
    .locals 0

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->getProgress()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetProgress(Landroid/window/BackProgressAnimator;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackProgressAnimator;->setProgress(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/window/BackProgressAnimator$1;

    const-string/jumbo v1, "progress"

    invoke-direct {v0, v1}, Landroid/window/BackProgressAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    iput v0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    new-instance v0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    new-instance v2, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iput-object v1, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    new-instance v1, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v1, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/BackProgressAnimator$$ExternalSyntheticLambda1;-><init>(Landroid/window/BackProgressAnimator;)V

    iput-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroid/window/BackProgressAnimator;->PROGRESS_PROP:Landroid/util/FloatProperty;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private blacklist getProgress()F
    .locals 0

    iget p0, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return p0
.end method

.method private blacklist invokeBackCancelledRunnable()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist invokeBackInvokedRunnable()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    :cond_0
    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    :cond_1
    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getLastFrameTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    return-void
.end method

.method private blacklist setProgress(F)V
    .locals 0

    iput p1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return-void
.end method

.method private blacklist updateProgressValue(FFJ)V
    .locals 8

    iput p2, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_1

    new-instance v1, Landroid/window/BackEvent;

    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p2}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p2}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    div-float v4, p1, v0

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/window/BackEvent;-><init>(FFFIJ)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/window/BackEvent;

    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p2}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result p2

    iget-object p3, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p3}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result p3

    div-float/2addr p1, v0

    iget-object p4, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    invoke-virtual {p4}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result p4

    invoke-direct {v1, p2, p3, p1, p4}, Landroid/window/BackEvent;-><init>(FFFI)V

    :goto_0
    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    invoke-interface {p0, v1}, Landroid/window/BackProgressAnimator$ProgressCallback;->onProgressUpdate(Landroid/window/BackEvent;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getVelocity()F
    .locals 1

    iget p0, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public blacklist isBackAnimationInProgress()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    return p0
.end method

.method public blacklist onAnimationUpdate(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getLastFrameTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    :cond_0
    return-void
.end method

.method public blacklist onBackCancelled(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public blacklist onBackInvoked(Ljava/lang/Runnable;)V
    .locals 4

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance p1, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    iget v1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    invoke-virtual {p1, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    iget v1, p0, Landroid/window/BackProgressAnimator;->mVelocity:F

    invoke-virtual {p1, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->start()V

    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->doAnimationFrame(J)Z

    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V
    .locals 4

    iput-object p1, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iput-object p2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, v0, v1}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mButtonSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void

    :cond_0
    iget-object p2, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mGestureSpringForce:Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p2, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public blacklist removeOnBackCancelledFinishCallback()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public blacklist removeOnBackInvokedFinishCallback()V
    .locals 2

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnBackInvokedFlingUpdateListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Landroid/window/BackProgressAnimator;->mOnAnimationEndListener:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public blacklist reset()V
    .locals 6

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackCancelledFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-direct {p0, v1, v1, v2, v3}, Landroid/window/BackProgressAnimator;->updateProgressValue(FFJ)V

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackCancelledRunnable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/window/BackProgressAnimator;->invokeBackInvokedRunnable()V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation;->cancel()V

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mBackInvokedFlingAnim:Lcom/android/internal/dynamicanimation/animation/FlingAnimation;

    :cond_2
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/window/BackProgressAnimator;->mSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackProgressAnimator;->mBackAnimationInProgress:Z

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mLastBackEvent:Landroid/window/BackMotionEvent;

    iput-object v2, p0, Landroid/window/BackProgressAnimator;->mCallback:Landroid/window/BackProgressAnimator$ProgressCallback;

    iput v1, p0, Landroid/window/BackProgressAnimator;->mProgress:F

    return-void
.end method
