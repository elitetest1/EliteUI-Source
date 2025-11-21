.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ANIMATION_FRAME_DURATION:I = 0x10

.field private static final greylist-max-o COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final greylist-max-o EXPANDED_FULL_OPEN:I = -0x2711

.field private static final greylist-max-o MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final greylist-max-o MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final greylist-max-o MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final greylist-max-o MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final whitelist ORIENTATION_HORIZONTAL:I = 0x0

.field public static final whitelist ORIENTATION_VERTICAL:I = 0x1

.field private static final greylist-max-o TAP_THRESHOLD:I = 0x6

.field private static final greylist-max-o VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private greylist-max-o mAllowSingleTap:Z

.field private greylist-max-o mAnimateOnClick:Z

.field private greylist-max-o mAnimatedAcceleration:F

.field private greylist-max-o mAnimatedVelocity:F

.field private greylist-max-o mAnimating:Z

.field private greylist-max-o mAnimationLastTime:J

.field private greylist-max-o mAnimationPosition:F

.field private greylist-max-o mBottomOffset:I

.field private greylist-max-o mContent:Landroid/view/View;

.field private final greylist-max-o mContentId:I

.field private greylist-max-o mCurrentAnimationTime:J

.field private greylist-max-o mExpanded:Z

.field private final greylist-max-o mFrame:Landroid/graphics/Rect;

.field private greylist-max-o mHandle:Landroid/view/View;

.field private greylist-max-o mHandleHeight:I

.field private final greylist-max-o mHandleId:I

.field private greylist-max-o mHandleWidth:I

.field private final greylist-max-o mInvalidate:Landroid/graphics/Rect;

.field private greylist-max-o mLocked:Z

.field private final greylist-max-o mMaximumAcceleration:I

.field private final greylist-max-o mMaximumMajorVelocity:I

.field private final greylist-max-o mMaximumMinorVelocity:I

.field private final greylist-max-o mMaximumTapVelocity:I

.field private greylist-max-o mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private greylist-max-o mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private greylist-max-o mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final greylist-max-o mSlidingRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTapThreshold:I

.field private greylist mTopOffset:I

.field private greylist mTouchDelta:I

.field private greylist mTracking:Z

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVelocityUnits:I

.field private greylist-max-o mVertical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimateOnClick(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocked(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoAnimation(Landroid/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v3, Landroid/R$styleable;->SlidingDrawer:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/SlidingDrawer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ne p2, p1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    iput-boolean p2, v1, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 p2, 0x0

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, v1, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    const/4 p3, 0x2

    invoke-virtual {v5, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mTopOffset:I

    const/4 p2, 0x3

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 p2, 0x6

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v1, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 p1, 0x4

    invoke-virtual {v5, p1, p0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x5

    invoke-virtual {v5, p2, p0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p1, p2, :cond_1

    iput p1, v1, Landroid/widget/SlidingDrawer;->mHandleId:I

    iput p2, v1, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40c00000    # 6.0f

    mul-float/2addr p2, p1

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 p2, 0x43160000    # 150.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 p2, 0x43480000    # 200.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 p2, 0x44fa0000    # 2000.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, p0}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The content and handle attributes must refer to different children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The content attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o animateClose(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private greylist-max-o animateOpen(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private greylist-max-o closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o doAnimation()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    return-void

    :cond_2
    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private greylist-max-o incrementAnimation()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private greylist-max-o moveHandle(I)V
    .locals 7

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v3, p1, v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_2

    sub-int v3, v4, v1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_3

    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :cond_4
    if-ne p1, v4, :cond_5

    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    return-void

    :cond_5
    if-ne p1, v3, :cond_6

    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v3, p1, v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_7

    sub-int v3, v4, v1

    goto :goto_1

    :cond_7
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v4

    sub-int/2addr p1, v1

    if-le v3, p1, :cond_8

    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v3, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr p1, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v3

    sub-int v3, p1, v1

    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private greylist-max-o openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o performFling(IFZZ)V
    .locals 3

    int-to-float v0, p1

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, p3

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    neg-int p1, p3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_2
    :goto_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_3
    if-nez p3, :cond_6

    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_5

    iget-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result p3

    :goto_2
    div-int/lit8 p3, p3, 0x2

    if-le p1, p3, :cond_6

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    :cond_5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_6
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v0, 0x10

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    return-void
.end method

.method private greylist prepareContent()V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget p0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    iget p0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int v3, v1, p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private greylist prepareTracking(I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v1, :cond_1

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    return-void
.end method

.method private greylist-max-o stopTracking(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist animateClose()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public whitelist animateOpen()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public whitelist animateToggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    return-void
.end method

.method public whitelist close()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/4 p0, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v5, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0, v5, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    :cond_6
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SlidingDrawer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getContent()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object p0
.end method

.method public whitelist getHandle()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object p0
.end method

.method public whitelist isMoving()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isOpened()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return p0
.end method

.method public whitelist lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 3

    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The content attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The handle attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v2

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    :goto_0
    iget-object p0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6

    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_1

    iget p5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_0

    :cond_1
    sub-int/2addr p5, p3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p5, v1

    :goto_0
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v4, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_3
    sub-int/2addr p4, p2

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p4, v1

    :goto_1
    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int v3, v1, p2

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/2addr p2, p4

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int p1, v3, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto/16 :goto_a

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto/16 :goto_a

    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    cmpg-float v6, v3, v5

    if-gez v6, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    neg-float v0, v0

    :cond_5
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v5

    cmpl-float v7, v0, v7

    if-lez v7, :cond_9

    int-to-float v0, v5

    goto :goto_3

    :cond_6
    cmpg-float v6, v0, v5

    if-gez v6, :cond_7

    move v6, v1

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    neg-float v3, v3

    :cond_8
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v5

    cmpl-float v7, v3, v7

    if-lez v7, :cond_9

    int-to-float v3, v5

    :cond_9
    :goto_3
    float-to-double v7, v0

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    if-eqz v6, :cond_a

    neg-float v0, v0

    :cond_a
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_c

    if-eqz v6, :cond_b

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v8

    if-lt v3, v7, :cond_e

    :cond_b
    if-nez v6, :cond_14

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_14

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v8

    if-lt v5, v7, :cond_e

    :cond_d
    if-nez v6, :cond_14

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_14

    :cond_e
    :goto_4
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v6, :cond_12

    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_10

    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    move v3, v5

    :goto_5
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_a

    :cond_10
    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    move v3, v5

    :goto_6
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    move v3, v5

    :goto_7
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_14
    if-eqz v4, :cond_15

    goto :goto_8

    :cond_15
    move v3, v5

    :goto_8
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_16
    if-eqz v4, :cond_17

    goto :goto_9

    :cond_17
    move v3, v5

    :goto_9
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    :cond_18
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_1a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_b

    :cond_19
    return v2

    :cond_1a
    :goto_b
    return v1
.end method

.method public whitelist open()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public whitelist setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public whitelist setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public whitelist setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public whitelist toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method public whitelist unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
