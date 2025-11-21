.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;,
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ACTIVATION_DELAY:I

.field private static final greylist-max-o DEFAULT_EDGE_TYPE:I = 0x1

.field private static final greylist-max-o DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final greylist-max-o DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final greylist-max-o DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final greylist-max-o DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final greylist-max-o DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final greylist-max-o EDGE_TYPE_INSIDE:I = 0x0

.field public static final greylist-max-o EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final greylist-max-o EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final greylist-max-o HORIZONTAL:I = 0x0

.field public static final greylist-max-o NO_MAX:F = 3.4028235E38f

.field public static final greylist-max-o NO_MIN:F = 0.0f

.field public static final greylist-max-o RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final greylist-max-o VERTICAL:I = 0x1


# instance fields
.field private greylist-max-o mActivationDelay:I

.field private greylist-max-o mAlreadyDelayed:Z

.field private greylist-max-o mAnimating:Z

.field private final greylist-max-o mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mExclusive:Z

.field private greylist-max-o mMaximumEdges:[F

.field private greylist-max-o mMaximumVelocity:[F

.field private greylist-max-o mMinimumVelocity:[F

.field private greylist-max-o mNeedsCancel:Z

.field private greylist-max-o mNeedsReset:Z

.field private greylist-max-o mRelativeEdges:[F

.field private greylist-max-o mRelativeVelocity:[F

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final greylist-max-o mTarget:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimating(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTarget(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimating(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelTargetTouch(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldAnimate(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(FFF)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(III)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const v0, 0x44c4e000    # 1575.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    const v2, 0x439d8000    # 315.0f

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float v0, v1

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    int-to-float p1, p1

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    sget p1, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private greylist-max-o cancelTargetTouch()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private greylist-max-o computeTargetVelocity(IFFF)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    invoke-direct {p0, v0, p3, v1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget-object p3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget p3, p3, p1

    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v1, v1, p1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget p0, p0, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_1

    mul-float/2addr p2, p3

    invoke-static {p2, v1, p0}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0

    :cond_1
    neg-float p1, p2

    mul-float/2addr p1, p3

    invoke-static {p1, v1, p0}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method private static greylist-max-o constrain(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private static greylist-max-o constrain(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private greylist-max-o constrainEdgeValue(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float p0, p1, v0

    if-gez p0, :cond_4

    neg-float p0, p2

    div-float/2addr p1, p0

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    cmpl-float v3, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v4, p1

    return v4

    :cond_3
    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p0, :cond_4

    if-ne v1, v2, :cond_4

    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method private greylist-max-o getEdgeValue(FFFF)F
    .locals 1

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    invoke-direct {p0, p4, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p3

    sub-float/2addr p2, p4

    invoke-direct {p0, p2, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private greylist-max-o requestStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    return-void
.end method

.method private greylist-max-o shouldAnimate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o startAnimating()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o canTargetScrollHorizontally(I)Z
.end method

.method public abstract greylist-max-o canTargetScrollVertically(I)Z
.end method

.method public greylist-max-o isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return p0
.end method

.method public greylist-max-o isExclusive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return p0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, p2, p1, v3}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result p1

    iget-object p2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->startAnimating()V

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public abstract greylist-max-o scrollTargetBy(II)V
.end method

.method public greylist-max-o setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public greylist-max-o setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public greylist-max-o setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0
.end method

.method public greylist-max-o setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public greylist-max-o setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public greylist-max-o setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    aput p2, v0, p1

    return-object p0
.end method

.method public greylist-max-o setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    aput p2, v0, p1

    return-object p0
.end method

.method public greylist-max-o setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public greylist-max-o setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public greylist-max-o setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public greylist-max-o setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    aput p2, v0, p1

    return-object p0
.end method
