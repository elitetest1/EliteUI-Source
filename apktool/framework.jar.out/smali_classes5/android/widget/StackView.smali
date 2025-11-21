.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final greylist-max-o FRAME_PADDING:I = 0x4

.field private static final greylist-max-o GESTURE_NONE:I = 0x0

.field private static final greylist-max-o GESTURE_SLIDE_DOWN:I = 0x2

.field private static final greylist-max-o GESTURE_SLIDE_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static final greylist-max-o ITEMS_SLIDE_DOWN:I = 0x1

.field private static final greylist-max-o ITEMS_SLIDE_UP:I = 0x0

.field private static final greylist-max-o MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final greylist-max-o MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final greylist-max-o MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final greylist-max-o NUM_ACTIVE_VIEWS:I = 0x5

.field private static final greylist-max-o PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final greylist-max-o SLIDE_UP_RATIO:F = 0.7f

.field private static final greylist-max-o STACK_RELAYOUT_DURATION:I = 0x64

.field private static final greylist-max-o SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static greylist-max-o sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mClickColor:I

.field private greylist-max-o mClickFeedback:Landroid/widget/ImageView;

.field private greylist-max-o mClickFeedbackIsValid:Z

.field private greylist-max-o mFirstLayoutHappened:Z

.field private greylist-max-o mFramePadding:I

.field private greylist-max-o mHighlight:Landroid/widget/ImageView;

.field private greylist-max-o mInitialX:F

.field private greylist-max-o mInitialY:F

.field private greylist-max-o mLastInteractionTime:J

.field private greylist-max-o mLastScrollTime:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-o mNewPerspectiveShiftX:F

.field private greylist-max-o mNewPerspectiveShiftY:F

.field private greylist-max-o mPerspectiveShiftX:F

.field private greylist-max-o mPerspectiveShiftY:F

.field private greylist-max-o mResOutColor:I

.field private greylist-max-o mSlideAmount:I

.field private greylist-max-o mStackMode:I

.field private greylist-max-o mStackSlider:Landroid/widget/StackView$StackSlider;

.field private greylist-max-o mSwipeGestureType:I

.field private greylist-max-o mSwipeThreshold:I

.field private final greylist-max-o mTouchRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTransitionIsSetup:Z

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mYVelocity:I

.field private final greylist-max-o stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I
    .locals 0

    iget p0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStackMode(Landroid/widget/StackView;)I
    .locals 0

    iget p0, p0, Landroid/widget/StackView;->mStackMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v4, Lcom/android/internal/R$styleable;->StackView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/StackView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x1

    invoke-virtual {v6, p0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    iput p0, v2, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v6, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    iput p0, v2, Landroid/widget/StackView;->mClickColor:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v2}, Landroid/widget/StackView;->initStackView()V

    return-void
.end method

.method private greylist-max-o beginGestureIfNeeded(F)V
    .locals 9

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v0, v1, :cond_12

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v0, :cond_12

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-ne p1, v0, :cond_3

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_2

    :cond_4
    if-ne p1, v0, :cond_2

    goto :goto_1

    :goto_2
    iget-boolean v5, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v5, :cond_7

    if-ne v2, v1, :cond_7

    iget v5, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v5, :cond_5

    if-eq p1, v1, :cond_6

    :cond_5
    if-ne v5, v1, :cond_7

    if-ne p1, v0, :cond_7

    :cond_6
    move v5, v1

    goto :goto_3

    :cond_7
    move v5, v4

    :goto_3
    iget-boolean v6, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v6, :cond_a

    if-ne v2, v1, :cond_a

    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v6, v1, :cond_8

    if-eq p1, v1, :cond_9

    :cond_8
    if-nez v6, :cond_a

    if-ne p1, v0, :cond_a

    :cond_9
    move v6, v1

    goto :goto_4

    :cond_a
    move v6, v4

    :goto_4
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_c

    if-nez v6, :cond_c

    if-nez v5, :cond_c

    :cond_b
    move v0, v4

    goto :goto_6

    :cond_c
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_d
    iget v6, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v6, v3

    sub-int/2addr v2, v1

    if-eq v6, v2, :cond_f

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    :cond_f
    :goto_6
    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v4

    :goto_7
    iput-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    iput p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    :cond_12
    :goto_8
    return-void
.end method

.method private blacklist goBackward()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist goForward()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 9

    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    :cond_0
    iget-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le p1, v0, :cond_3

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v0, v0, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v0, :cond_3

    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    :goto_0
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    :cond_3
    iget v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v0, v0

    const/4 v3, 0x1

    if-ge p1, v0, :cond_5

    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez p1, :cond_5

    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    :goto_1
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_7

    :cond_5
    iget p1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const-string v0, "XProgress"

    const-string v4, "YProgress"

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne p1, v3, :cond_9

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_4

    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_4
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    new-array v8, v3, [F

    aput v5, v8, v2

    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v3, [F

    aput v6, v5, v2

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v7, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    :cond_9
    if-ne p1, v1, :cond_d

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v3, :cond_a

    move v5, v6

    :cond_a
    if-eq p1, v3, :cond_c

    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget p1, p1, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_6

    :cond_c
    :goto_5
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_6
    new-instance v7, Landroid/widget/StackView$StackSlider;

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v7, p0, v8}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    new-array v8, v3, [F

    aput v5, v8, v2

    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v3, [F

    aput v6, v5, v2

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v7, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_d
    :goto_7
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    return-void
.end method

.method private greylist-max-o initStackView()V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->configureViewAnimator(II)V

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v0, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v0, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/StackView;->setClipToPadding(Z)V

    iput v1, p0, Landroid/widget/StackView;->mStackMode:I

    iput v0, p0, Landroid/widget/StackView;->mWhichChild:I

    iget-object v0, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/StackView;->mFramePadding:I

    return-void
.end method

.method private greylist-max-o measureChildren()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v3, v1

    const v4, 0x3f666666    # 0.9f

    mul-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v4, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v0, :cond_2

    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/high16 v11, -0x80000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v12, v11}, Landroid/view/View;->measure(II)V

    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_1

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v10, v11, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-le v11, v8, :cond_0

    move v8, v11

    :cond_0
    if-le v10, v9, :cond_1

    move v9, v10

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v7

    iput v3, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    mul-float/2addr v6, v7

    iput v6, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    if-lez v8, :cond_3

    if-lez v0, :cond_3

    if-ge v8, v5, :cond_3

    sub-int/2addr v1, v8

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    :cond_3
    if-lez v9, :cond_4

    if-lez v0, :cond_4

    if-ge v9, v4, :cond_4

    sub-int/2addr v2, v9

    int-to-float v0, v2

    iput v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    :cond_4
    return-void
.end method

.method private greylist-max-o onLayout()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    :cond_1
    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v0, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v0, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    return-void
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v3, v2, :cond_3

    if-eq v3, v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    iget v0, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    iget-object p0, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private greylist-max-o pacedScroll(Z)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastScrollTime:J

    :cond_1
    return-void
.end method

.method private greylist-max-o setupStackSlider(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v1, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 10

    iget v0, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget v2, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v2, p1

    add-int/lit8 p1, v2, -0x1

    iget v5, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_2

    add-int/lit8 p1, v2, -0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    :cond_2
    :goto_0
    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    iget v5, p0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    div-float/2addr p1, v5

    sub-float v5, v2, p1

    const/4 v6, 0x0

    mul-float/2addr v6, v5

    sub-float v6, v2, v6

    mul-float/2addr p1, v0

    sub-float v0, v6, v2

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    mul-float/2addr v0, v7

    add-float/2addr p1, v0

    mul-float/2addr v5, v1

    sub-float/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v8

    div-float/2addr p0, v9

    mul-float/2addr v2, p0

    add-float/2addr v5, v2

    instance-of p0, p2, Landroid/widget/StackView$StackFrame;

    if-eqz p0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v0}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    :cond_3
    if-eqz p3, :cond_5

    new-array p3, v4, [F

    const/4 v0, 0x0

    aput v5, p3, v0

    const-string/jumbo v1, "translationX"

    invoke-static {v1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v1, v4, [F

    aput p1, v1, v0

    const-string/jumbo p1, "translationY"

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v1, v4, [F

    aput v6, v1, v0

    const-string/jumbo v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [F

    aput v6, v2, v0

    const-string/jumbo v5, "scaleY"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v0

    aput-object v2, v5, v4

    aput-object p1, v5, v3

    const/4 p1, 0x3

    aput-object p3, v5, p1

    invoke-static {p2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_4

    check-cast p2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p2, p1}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private greylist-max-o updateChildTransforms()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    :cond_2
    :goto_0
    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method bridge synthetic blacklist createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    invoke-virtual {v0, p0}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    iput p0, v0, Landroid/widget/StackView$LayoutParams;->width:I

    iput p0, v0, Landroid/widget/StackView$LayoutParams;->width:I

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    :cond_2
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v2, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRectUnion(Landroid/graphics/Rect;)Z

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/StackView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    iget p0, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    return-object v0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/StackView;->pacedScroll(Z)V

    return v3

    :cond_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, v3}, Landroid/widget/StackView;->pacedScroll(Z)V

    return v3

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget p0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p0, :cond_3

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void

    :cond_3
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string p0, "StackView"

    const-string p1, "Error: No data for our primary pointer."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    :cond_3
    iput v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/StackView;->mInitialY:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/StackView;->mActivePointerId:I

    :cond_5
    :goto_0
    iget p0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget p4, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget p5, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    iget v1, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr p4, v3

    iget v0, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr p5, v0

    invoke-virtual {p3, v1, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/high16 v4, 0x1000000

    const/high16 v5, -0x80000000

    const v6, 0x40071c72

    if-nez p2, :cond_1

    if-eqz v2, :cond_3

    iget v1, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v1, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v1, v7

    goto :goto_1

    :cond_1
    if-ne p2, v5, :cond_4

    if-eqz v2, :cond_3

    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v7, v8

    if-gt v7, v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    or-int/2addr v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    if-eqz v2, :cond_7

    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_5
    if-ne p2, v5, :cond_8

    if-eqz v2, :cond_7

    iget p1, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr p1, p2

    if-gt p1, v0, :cond_6

    goto :goto_2

    :cond_6
    or-int p1, v0, v4

    goto :goto_2

    :cond_7
    move v0, v3

    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string p0, "StackView"

    const-string p1, "Error: No data for our primary pointer."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v5, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x1

    if-eq v0, v5, :cond_8

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    iget p1, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v0, v6, :cond_6

    iget v0, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    int-to-float p1, p1

    div-float/2addr v4, p1

    mul-float/2addr v4, v2

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v5, :cond_5

    sub-float v4, v2, v4

    :cond_5
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    return v5

    :cond_6
    if-ne v0, v5, :cond_9

    iget v0, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v4, v0

    neg-float v0, v4

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float/2addr v0, v2

    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne p1, v5, :cond_7

    sub-float v0, v2, v0

    :cond_7
    iget-object p1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    iget-object p0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {p0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    return v5

    :cond_8
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    :cond_9
    :goto_0
    return v5
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_5

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p0

    return p0

    :pswitch_1
    iget p1, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1020046
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist showNext()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    iget p1, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    :goto_0
    iget p2, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/StackView;->modulo(II)I

    move-result p2

    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object p2, p2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    iput-boolean p1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    return-void
.end method

.method public whitelist showPrevious()V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move-object v2, p3

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    :cond_0
    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_1

    invoke-direct {p0, p2, p3, v1}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x2

    const-string v6, "XProgress"

    const-string v7, "YProgress"

    if-nez p1, :cond_3

    if-ne p2, v4, :cond_3

    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v8, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v8, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v8, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    invoke-virtual {v8, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    if-eqz p4, :cond_2

    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v7, v5, v4

    invoke-static {v8, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    if-nez p2, :cond_5

    move-object p1, p3

    check-cast p1, Landroid/widget/StackView$StackFrame;

    invoke-virtual {p1}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    new-instance v9, Landroid/widget/StackView$StackSlider;

    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v9, p0, v10}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    invoke-virtual {v9, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    if-eqz p4, :cond_4

    new-array v10, v4, [F

    aput v3, v10, v1

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v7, v4, [F

    aput v0, v7, v1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v4

    invoke-static {v9, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_4
    invoke-virtual {v9, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    invoke-virtual {v9, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    if-ne p1, v4, :cond_8

    :cond_7
    if-le p2, v4, :cond_8

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/StackView$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    invoke-virtual {p1, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_9

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_9
    if-ne p2, v2, :cond_b

    if-eqz p4, :cond_a

    new-instance p1, Landroid/widget/StackView$1;

    invoke-direct {p1, p0, p3}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    :goto_0
    if-eq p2, v2, :cond_c

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    :cond_c
    return-void
.end method

.method greylist-max-o updateClickFeedback()V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v4, p0, Landroid/widget/StackView;->mClickColor:I

    invoke-virtual {v3, v1, v4}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_0
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    :cond_1
    return-void
.end method
