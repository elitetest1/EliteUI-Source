.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$DifferentialFlingTarget;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final blacklist HOVERSCROLL_DOWN:I = 0x2

.field private static final blacklist HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final whitelist SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScrollView"

.field static final blacklist sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist GO_TO_TOP_HIDE:I

.field private final blacklist GTP_STATE_MAINTAINED:I

.field private final blacklist GTP_STATE_NONE:I

.field private final blacklist GTP_STATE_PRESSED:I

.field private final blacklist GTP_STATE_SHOWN:I

.field private blacklist HOVERSCROLL_DELAY:I

.field private blacklist HOVERSCROLL_SPEED:F

.field private final blacklist ON_ABSORB_VELOCITY:I

.field private final blacklist SWITCH_CONTROL_FLING:I

.field private final blacklist SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final blacklist SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private greylist-max-o mActivePointerId:I

.field private blacklist mAutoscrollDuration:F

.field private blacklist mAutoscrollDurationGap:F

.field private greylist-max-p mChildToScrollTo:Landroid/view/View;

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-r mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private final blacklist mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

.field private blacklist mGoToTopElevation:I

.field private blacklist mGoToTopGap:I

.field private blacklist mGoToTopRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mGoToTopWH:I

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private blacklist mHoverAreaEnter:Z

.field private blacklist mHoverBottomAreaHeight:I

.field private blacklist mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private blacklist mHoverRecognitionCurrentTime:J

.field private blacklist mHoverRecognitionDurationTime:J

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollSpeed:I

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollTimeInterval:J

.field private blacklist mHoverTopAreaHeight:I

.field private blacklist mIgnoreDelaychildPrerssed:Z

.field private greylist mIsBeingDragged:Z

.field private blacklist mIsGoToTopShown:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private greylist mLastMotionY:I

.field private greylist mLastScroll:J

.field private blacklist mLinear:Z

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-p mMinimumVelocity:I

.field private blacklist mNeedsHoverScroll:Z

.field private greylist-max-o mNestedYOffset:I

.field private blacklist mOutline:Landroid/graphics/Outline;

.field private greylist-max-p mOverflingDistance:I

.field private greylist-max-p mOverscrollDistance:I

.field private blacklist mPreviousTextViewScroll:Z

.field private greylist-max-o mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final greylist-max-o mScrollConsumed:[I

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private final blacklist mSemAutoHide:Ljava/lang/Runnable;

.field private blacklist mSemEnableGoToTop:Z

.field private blacklist mSemGoToTopBitmap:Landroid/graphics/Bitmap;

.field private blacklist mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

.field private blacklist mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

.field private blacklist mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopLastState:I

.field private blacklist mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemGoToTopPressed:Z

.field private final blacklist mSemGoToTopRect:Landroid/graphics/Rect;

.field private blacklist mSemGoToTopState:I

.field private blacklist mSizeChange:Z

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemGoToTopImage(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/ScrollView;)F
    .locals 0

    iget p0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsGoToTopShown(Landroid/widget/ScrollView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGoToTopFadeIn(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeIn()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemPlayGoToTopFadeOut(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeOut()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemSetupGoToTop(Landroid/widget/ScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    const/16 v3, 0x2710

    iput v3, p0, Landroid/widget/ScrollView;->ON_ABSORB_VELOCITY:I

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    iput v0, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ScrollView;->GTP_STATE_MAINTAINED:I

    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    new-array v5, v3, [I

    iput-object v5, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v2, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iput v2, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    sget-object v5, Lcom/android/internal/R$styleable;->ScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v7, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    :cond_0
    return-void
.end method

.method private blacklist autoScrollWithDuration(F)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mLinear:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "autoScrollWithDuration() duration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method private greylist canScroll()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v1, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v1, p0

    if-ge v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private blacklist canScrollDown()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    if-le v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private blacklist canScrollUp()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v1, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v1, p0

    if-gt v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist consumeFlingInStretch(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p1, :cond_2

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_1
    sub-int/2addr p1, v0

    return p1

    :cond_2
    if-gez p1, :cond_4

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    if-eq v0, p1, :cond_3

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_3
    sub-int/2addr p1, v0

    :cond_4
    :goto_0
    return p1
.end method

.method private greylist-max-o doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_1
    return-void
.end method

.method private blacklist drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->enableZ()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v4, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v4, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v5, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object v4, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v0}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v3, v4}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    iget-object p0, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private greylist endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    const/4 v8, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    if-nez v1, :cond_1

    move-object v1, v5

    move v4, v9

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v6, v10, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v7, v6, :cond_4

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    move-object v1, v5

    move v4, v8

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    :goto_3
    move-object v1, v5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private greylist-max-o flingWithNestedDispatch(I)V
    .locals 4

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    move-result v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void

    :cond_3
    if-nez v1, :cond_7

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-direct {p0, v0, v1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0, p1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_7
    return-void
.end method

.method private blacklist flingWithoutAcc(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    iget-object v1, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_0

    const-string v1, "ScrollView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private greylist-max-o getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 7

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iget-wide v3, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget-wide v2, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x4

    if-lez v4, :cond_2

    cmp-long v4, v2, v5

    if-gez v4, :cond_2

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v5

    const-wide/16 v5, 0x5

    if-ltz v4, :cond_3

    cmp-long v4, v2, v5

    if-gez v4, :cond_3

    int-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    cmp-long v2, v2, v5

    if-ltz v2, :cond_4

    int-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    :cond_4
    :goto_0
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    :goto_1
    if-gez v1, :cond_6

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v3, :cond_6

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_6
    if-lez v1, :cond_7

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v3, p1, :cond_7

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_9

    if-ne v1, v0, :cond_8

    if-lez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    move p1, v0

    :goto_3
    if-eqz p1, :cond_e

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v1, :cond_e

    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/16 v3, 0x2710

    if-ne v1, v2, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_a
    if-ne v1, v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_b
    :goto_4
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_d
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_e
    if-nez p1, :cond_f

    iget-boolean p1, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez p1, :cond_f

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_f
    :goto_5
    return-void
.end method

.method private greylist-max-o inChild(II)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .locals 4

    iget-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/ScrollView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ScrollView$DifferentialFlingTarget;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    :cond_0
    return-void
.end method

.method private blacklist initGoToTop()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1120132

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v1, 0x10504cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mGoToTopWH:I

    const v1, 0x10504ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mGoToTopGap:I

    const v1, 0x10504c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    const-string v0, "ScrollView"

    const-string v1, "initGoToTop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iput v1, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v1, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    :cond_0
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private greylist-max-o initScrollView()V
    .locals 2

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    invoke-direct {p0}, Landroid/widget/ScrollView;->initGoToTop()V

    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    iget-object p0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    :goto_1
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->doScrollY(I)V

    move v3, v4

    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v3
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    return v1

    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_2
    return v1
.end method

.method private blacklist semGetParentViewRotation()F
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private blacklist semGetRotatePointerIcon(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRotation()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semGetParentViewRotation()F

    move-result p0

    add-float/2addr v0, p0

    const/4 p0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x4e2b

    if-ne p1, v2, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    move v3, p0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const/16 v4, -0x2d

    goto :goto_2

    :cond_2
    const/16 v4, 0x2d

    :goto_2
    int-to-float v4, v4

    add-float/2addr v0, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    const/4 v1, -0x2

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, 0x4

    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_8

    if-eq p1, v4, :cond_7

    const/4 p0, 0x3

    if-eq p1, p0, :cond_6

    const/16 p0, 0x4e21

    return p0

    :cond_6
    const/16 p0, 0x4e31

    return p0

    :cond_7
    const/16 p0, 0x4e2f

    return p0

    :cond_8
    const/16 p0, 0x4e2d

    return p0

    :cond_9
    return v2
.end method

.method private blacklist semIsSupportGotoTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist semIsTalkBackIsRunning()Z
    .locals 2

    iget-object p0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private blacklist semPlayGoToTopFadeIn()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist semPlayGoToTopFadeOut()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist semSetupGoToTop(I)V
    .locals 11

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-nez v3, :cond_4

    if-nez p1, :cond_4

    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput p1, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v5, v3, v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/2addr v5, v2

    add-int/2addr v6, v5

    filled-new-array {v1, v1}, [I

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    if-ne v8, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v9

    :goto_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_7

    iget v10, v8, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_7
    move v10, v1

    :goto_3
    if-eqz v0, :cond_8

    iget v0, v8, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_8
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_4
    aget v8, v5, v1

    if-ge v8, v10, :cond_9

    neg-int v8, v8

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v8, v10, :cond_9

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v8, v10

    div-int/2addr v8, v2

    add-int/2addr v6, v8

    :cond_9
    aget v5, v5, v1

    add-int v8, v5, v3

    if-le v8, v0, :cond_a

    add-int/2addr v5, v3

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v0

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v5, v0, :cond_a

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v5, v0

    div-int/2addr v5, v2

    sub-int/2addr v6, v5

    :cond_a
    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v0, :cond_c

    if-eq v0, v9, :cond_b

    if-eq v0, v2, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/ScrollView;->mGoToTopWH:I

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v6, v5

    sub-int v7, v4, v3

    iget v8, p0, Landroid/widget/ScrollView;->mGoToTopGap:I

    sub-int/2addr v7, v8

    div-int/2addr v3, v2

    add-int/2addr v6, v3

    sub-int/2addr v4, v8

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_c
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_d
    :goto_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    :cond_e
    if-ne p1, v9, :cond_10

    iget p1, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz p1, :cond_10

    :cond_f
    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_10
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    iget p1, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput p1, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    iget-object p1, p0, Landroid/widget/ScrollView;->mOutline:Landroid/graphics/Outline;

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    return-void
.end method

.method private blacklist semShowGoToTop()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_0
    return-void
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .locals 3

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    double-to-float p0, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 1

    const/16 v0, 0x4e2b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x4e2f

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->semGetRotatePointerIcon(I)I

    move-result p2

    :cond_1
    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist arrowScroll(I)Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    iget-boolean v4, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_2
    const/16 v1, 0x21

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    if-ge v1, v2, :cond_4

    move v2, v1

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    return v4

    :cond_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    if-ne p1, v5, :cond_6

    goto :goto_1

    :cond_6
    neg-int v2, v2

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    :cond_7
    return v3
.end method

.method public whitelist computeScroll()V
    .locals 13

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    sub-int v1, v11, v5

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->consumeFlingInStretch(I)I

    move-result v3

    if-ne v4, v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    move v12, v2

    sub-int v2, v0, v4

    iget v9, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget p0, v1, Landroid/widget/ScrollView;->mScrollX:I

    iget v0, v1, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v1, p0, v0, v4, v5}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz v12, :cond_5

    if-eqz v3, :cond_5

    if-gez v11, :cond_4

    if-ltz v5, :cond_4

    iget-object p0, v1, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v0, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_4
    if-le v11, v7, :cond_5

    if-gt v5, v7, :cond_5

    iget-object p0, v1, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v0, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_6
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    return-void

    :cond_7
    move-object v1, p0

    iget-object p0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 p0, 0x0

    iput-object p0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_8
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget p0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p0, :cond_1

    sub-int/2addr v2, p0

    return v2

    :cond_1
    if-le p0, v0, :cond_2

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    if-eqz v5, :cond_5

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v6, :cond_2

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_2
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v6, :cond_4

    if-ne v5, v2, :cond_4

    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_4
    :goto_0
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_5
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v5, :cond_6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v9, :cond_7

    new-instance v9, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v9, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_7
    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v9, :cond_8

    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v9, :cond_9

    :cond_8
    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x41c80000    # 25.0f

    invoke-static {v4, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v4, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_a
    move v7, v3

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v2, :cond_b

    move v9, v4

    goto :goto_2

    :cond_b
    move v9, v3

    :goto_2
    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/16 v11, 0x4e21

    const-wide/16 v12, 0x0

    if-le v6, v10, :cond_c

    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v7, v10

    if-lt v6, v10, :cond_1e

    :cond_c
    if-lez v5, :cond_1e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v10

    if-gt v5, v10, :cond_1e

    if-eqz v8, :cond_1e

    if-ltz v6, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v6, v10, :cond_d

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v10, :cond_d

    iget-boolean v10, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_1e

    :cond_d
    iget v10, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v7, v10

    if-lt v6, v10, :cond_e

    if-gt v6, v7, :cond_e

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v10, v8, :cond_e

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_1e

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v10, 0x20

    if-eq v8, v10, :cond_1e

    :cond_f
    if-eqz v9, :cond_1e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v8

    if-nez v8, :cond_1e

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v8, :cond_10

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v8, :cond_10

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_10

    goto/16 :goto_4

    :cond_10
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v5, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_11
    const/4 v5, 0x7

    const/16 v8, 0x4e2f

    const/16 v9, 0x4e2b

    const/16 v10, 0xa

    if-eq v0, v5, :cond_16

    if-eq v0, v1, :cond_14

    if-eq v0, v10, :cond_12

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_13
    invoke-direct {p0, p1, v11}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-wide v12, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v12, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_14
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-ltz v6, :cond_15

    iget v0, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v6, v0, :cond_15

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object p0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_15
    iget v0, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v0, v7, v0

    if-lt v6, v0, :cond_1d

    if-gt v6, v7, :cond_1d

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {p0, p1, v8}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object p0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_16
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v0, :cond_17

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_17
    if-ltz v6, :cond_1a

    iget v0, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v6, v0, :cond_1a

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_19

    :cond_18
    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_19
    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object p0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_1a
    iget v0, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v0, v7, v0

    if-lt v6, v0, :cond_1d

    if-gt v6, v7, :cond_1d

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v0, v2, :cond_1c

    :cond_1b
    invoke-direct {p0, p1, v8}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1c
    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object p0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_1d
    :goto_3
    return v4

    :cond_1e
    :goto_4
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    invoke-direct {p0, p1, v11}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1f
    iget v0, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v6, v0, :cond_20

    iget v0, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int/2addr v7, v0

    if-lt v6, v7, :cond_21

    :cond_20
    if-lez v5, :cond_21

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v0

    if-le v5, v0, :cond_22

    :cond_21
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_22
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_24

    :cond_23
    invoke-direct {p0, p1, v11}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_24
    iput-wide v12, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v12, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

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

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v5

    iget-object v6, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v6, :cond_0

    new-instance v6, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v6, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v6, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_0
    iget v6, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v7, 0x1

    if-lez v6, :cond_1

    iget v6, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v6, :cond_2

    :cond_1
    iget-object v6, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iget-object v6, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_2
    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v6

    :goto_0
    move-object/from16 v8, p1

    invoke-virtual {v8, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    move v9, v7

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const v13, 0x101009e

    const v14, 0x10100a7

    if-eqz v11, :cond_c

    if-eq v11, v7, :cond_9

    if-eq v11, v10, :cond_7

    const/4 v15, 0x3

    if-eq v11, v15, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v15

    if-eqz v15, :cond_6

    iget v15, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v15, :cond_6

    iget-object v15, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v12, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v15, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    goto/16 :goto_2

    :cond_7
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v12

    if-eqz v12, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v12, v10, :cond_d

    iget-object v3, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_8

    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_8
    return v7

    :cond_9
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v12

    if-eqz v12, :cond_b

    iget v12, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v12, v10, :cond_b

    invoke-direct {v0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/widget/ScrollView$1;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Landroid/widget/ScrollView;->mGoToTopEdgeEffectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    invoke-virtual {v0}, Landroid/widget/ScrollView;->semAutoHide()V

    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    return v7

    :cond_b
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    goto :goto_2

    :cond_c
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v12

    if-eqz v12, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v12, v10, :cond_d

    iget-object v12, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-direct {v0, v10}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    iget-object v3, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v0, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x10100a1

    filled-new-array {v14, v13, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v7

    :cond_d
    :goto_2
    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v2, v12, :cond_e

    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v3, v12

    if-lt v2, v12, :cond_1d

    :cond_e
    if-lez v1, :cond_1d

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getRight()I

    move-result v12

    if-gt v1, v12, :cond_1d

    if-eqz v4, :cond_1d

    if-eqz v9, :cond_1d

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/16 v9, 0x20

    if-eq v4, v9, :cond_f

    goto/16 :goto_5

    :cond_f
    iget-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_10
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v4, v10, :cond_11

    iget-object v4, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_11

    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iget-object v0, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v7

    :cond_11
    if-eqz v5, :cond_17

    if-ltz v2, :cond_13

    iget v1, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v2, v1, :cond_13

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v1, :cond_12

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_12
    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput v10, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_13
    iget v1, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v1, v3, v1

    if-lt v2, v1, :cond_15

    if-gt v2, v3, :cond_15

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v1, :cond_14

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_14
    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput v7, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_15
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_16
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_3

    :cond_17
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_18
    :goto_3
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v1, v10, :cond_1a

    const-string v1, "ScrollView"

    const-string v2, "pen up false GOTOTOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v6, v6}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_19
    invoke-direct {v0, v6}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iget-object v0, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v7

    :cond_1a
    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_1b
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {v0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v3, v10, :cond_1c

    iget-object v3, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct {v0, v10}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iget-object v3, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v0, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x10100a1

    const v2, 0x10100a7

    const v15, 0x101009e

    filled-new-array {v2, v15, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v7

    :cond_1c
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1d
    :goto_5
    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_1e
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v1, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    move v6, v3

    move v7, v6

    :goto_0
    const/4 v8, 0x0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    move v5, v3

    move v6, v5

    :goto_1
    neg-int v7, v1

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    add-float/2addr v0, v6

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v5, v1

    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "fillViewport"

    iget-boolean p0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_c

    const/16 v3, 0x14

    if-eq v0, v3, :cond_9

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    const/16 p1, 0x5c

    if-eq v0, p1, :cond_6

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7a

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    move v2, v4

    :cond_8
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result p1

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_b

    invoke-static {v2}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    :cond_b
    return p1

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_e

    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    :cond_e
    return p1

    :cond_f
    :goto_2
    return v1
.end method

.method public whitelist fling(I)V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v13, v0, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    :cond_0
    iget-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_1

    const-string p1, "ScrollView-fling"

    invoke-static {p1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result p0

    return p0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget p0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float p0, v2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 1

    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget p0, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result p0

    return p0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    iget p0, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public blacklist getTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return p0
.end method

.method public whitelist isFillViewport()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return p0
.end method

.method public blacklist isLockScreenMode()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string p0, "keyguard"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p2

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v0, p0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, v0

    const/4 p3, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p3

    const/4 p3, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/high16 v1, 0x400000

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1a

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    iget v2, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    neg-int v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v0, v5, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v5, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v6

    const/16 v7, 0x2002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    if-ne v6, v8, :cond_5

    if-lez v0, :cond_5

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    const/high16 v7, 0x3f000000    # 0.5f

    if-gez v2, :cond_7

    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    invoke-virtual {v0, v2, v7}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    move v0, v8

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    if-le v2, v0, :cond_9

    if-eqz v6, :cond_8

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    invoke-virtual {v4, v2, v7}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    move v4, v8

    :cond_8
    move v10, v4

    move v4, v0

    move v0, v10

    goto :goto_3

    :cond_9
    move v0, v4

    move v4, v2

    :goto_3
    if-eq v4, v5, :cond_a

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return v8

    :cond_a
    if-eqz v6, :cond_e

    cmpl-float v2, v1, v3

    const/16 v4, 0x2710

    if-lez v2, :cond_b

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v2, :cond_b

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_b
    cmpg-float v1, v1, v3

    if-gez v1, :cond_c

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollDown()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_c
    :goto_4
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_e
    if-eqz v0, :cond_f

    return v8

    :cond_f
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget p0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge p0, v0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_ON:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->SEM_ACTION_AUTOSCROLL_OFF:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v4

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const-string v3, "ScrollView-scroll"

    if-eqz v0, :cond_a

    const/4 v5, -0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v0, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-ne v6, v5, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v5, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_12

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_12

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v4, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_7

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :cond_8
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v5, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v0}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_b

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto/16 :goto_1

    :cond_b
    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    :cond_c
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v1, v4

    :cond_e
    :goto_0
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_f
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    :cond_10
    iget-boolean p1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_11

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_11
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_12
    :goto_1
    iget-boolean p0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    iget-object p4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p4, :cond_0

    invoke-static {p4, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    :cond_0
    const/4 p4, 0x0

    iput-object p4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput-object p4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p4

    if-lez p4, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    goto :goto_0

    :cond_2
    move p4, p2

    :goto_0
    sub-int/2addr p5, p3

    iget p3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p5, p3

    iget p3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget p4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le p4, p3, :cond_3

    iput p3, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1

    :cond_3
    iget p3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez p3, :cond_4

    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    const-string p1, "ScrollView"

    const-string p2, " onsize change changed "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_5
    iget p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    :goto_0
    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v2, p0, :cond_3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v0, v1}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    float-to-int p1, p3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget p1, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 8

    iget p3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p3, p2, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    :cond_0
    iget-object p3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_1

    iget p3, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    iget p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz p4, :cond_2

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/widget/ScrollView$SavedState;

    invoke-virtual {p1}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput p0, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->doScrollY(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_0

    iput v11, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_0
    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_20

    const/4 v4, -0x1

    if-eq v2, v13, :cond_1d

    const-string v5, " in onTouchEvent"

    const-string v6, "Invalid pointerId="

    const-string v7, "ScrollView"

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-eq v2, v4, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_a

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_a

    :cond_5
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_6
    iput v4, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_a

    :cond_7
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v4, v3

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v6, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v0, v11, v4, v5, v6}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v5, v5, v13

    sub-int/2addr v4, v5

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v5, v5, v13

    int-to-float v5, v5

    invoke-virtual {v10, v12, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v5, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v6, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v6, v6, v13

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_9
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_c

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iput-boolean v13, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-lez v4, :cond_b

    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_b
    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v5

    :cond_c
    :goto_1
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_1a

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v5, v5, v13

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_e

    if-ne v3, v13, :cond_d

    if-lez v6, :cond_d

    goto :goto_2

    :cond_d
    move v15, v11

    goto :goto_3

    :cond_e
    :goto_2
    move v15, v13

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v15, :cond_11

    if-gez v4, :cond_f

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v7, v16, v1

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_4

    :cond_f
    if-lez v4, :cond_10

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_4

    :cond_10
    move v2, v11

    :goto_4
    sub-int/2addr v4, v2

    :cond_11
    move v2, v4

    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    iget v8, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v3, v1

    const/4 v1, 0x0

    move v5, v3

    const/4 v3, 0x0

    move v7, v5

    const/4 v5, 0x0

    move/from16 v17, v7

    const/4 v7, 0x0

    move/from16 v18, v11

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move v7, v6

    move v6, v2

    iget v1, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v1, v14

    sub-int v4, v6, v2

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    int-to-float v1, v2

    invoke-virtual {v10, v12, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_6

    :cond_12
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v1, :cond_19

    if-eqz v15, :cond_19

    int-to-float v1, v6

    cmpl-float v2, v1, v12

    if-eqz v2, :cond_19

    add-int/2addr v14, v6

    if-gez v14, :cond_14

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v2, v6

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_13
    move v11, v13

    goto :goto_5

    :cond_14
    if-le v14, v7, :cond_16

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float v3, v16, v11

    invoke-virtual {v2, v1, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    invoke-direct {v0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_15
    move/from16 v11, v18

    move/from16 v18, v13

    goto :goto_5

    :cond_16
    move/from16 v11, v18

    :goto_5
    invoke-direct {v0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_18
    move v4, v6

    goto :goto_7

    :cond_19
    :goto_6
    move v4, v6

    move/from16 v11, v18

    goto :goto_7

    :cond_1a
    move/from16 v18, v11

    :goto_7
    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v1

    if-eqz v1, :cond_24

    if-nez v11, :cond_1c

    if-eqz v18, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    iget-object v1, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    goto/16 :goto_a

    :cond_1c
    :goto_8
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    iget-object v1, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v1, v2, v3, v13, v11}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto/16 :goto_a

    :cond_1d
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_1e

    neg-int v2, v2

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_9

    :cond_1e
    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v2

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1f
    :goto_9
    iput v4, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a

    :cond_20
    move/from16 v18, v11

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_21

    return v18

    :cond_21
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_23
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    :cond_24
    :goto_a
    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_25
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public whitelist pageScroll(I)Z
    .locals 4

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "auto_scroll_speed_level_count"

    const/16 v3, 0xf

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x41840000    # 16.5f

    div-float/2addr v3, v0

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    const-string v0, "auto_scroll_speed_level"

    const/16 v3, 0x8

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    :goto_0
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_11

    const/high16 v0, 0x400000

    const v3, 0x4188cccd    # 17.1f

    if-eq p1, v0, :cond_f

    const/high16 p2, 0x800000

    if-eq p1, p2, :cond_b

    const p2, 0x1020038

    if-eq p1, p2, :cond_11

    const p2, 0x102003a

    if-eq p1, p2, :cond_13

    const/high16 p2, 0x4000000

    if-eq p1, p2, :cond_9

    const/high16 p2, 0x10000000

    if-eq p1, p2, :cond_6

    const/high16 p2, 0x20000000

    if-eq p1, p2, :cond_3

    return v2

    :cond_3
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float p2, p1, v3

    if-gez p2, :cond_4

    iget p2, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_4
    iget p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_5
    return v2

    :cond_6
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const p2, 0x3f19999a    # 0.6f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_7

    iget p2, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_7
    iget p1, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_8
    return v2

    :cond_9
    const-string p1, "ScrollView"

    const-string p2, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v2, v2, v2}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_c
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz p0, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_d
    return v1

    :cond_e
    return v2

    :cond_f
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    sub-float/2addr v3, p1

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_10
    return v2

    :cond_11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr p2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p1, p2, :cond_12

    invoke-virtual {p0, v2, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return v1

    :cond_12
    return v2

    :cond_13
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr p2, p1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p1, p2, :cond_14

    invoke-virtual {p0, v2, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return v1

    :cond_14
    return v2
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public whitelist scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public whitelist scrollToDescendant(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    return-void
.end method

.method blacklist semAutoHide()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public whitelist semSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V

    return-void
.end method

.method public whitelist semSetGoToTopEnabled(ZI)V
    .locals 8

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1080a95

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    const/16 v0, 0xff

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_1
    filled-new-array {v1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p2, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/widget/ScrollView$6;

    invoke-direct {p2, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {v0, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/widget/ScrollView$7;

    invoke-direct {p2, p0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/widget/ScrollView$8;

    invoke-direct {p2, p0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/graphics/RenderNode;

    const-string p2, "goToTop"

    invoke-direct {p1, p2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/widget/ScrollView;->mGoToTopRenderNode:Landroid/graphics/RenderNode;

    iget p0, p0, Landroid/widget/ScrollView;->mGoToTopElevation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->setElevation(F)Z

    :cond_3
    return-void
.end method

.method public whitelist semSetHoverScrollMode(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public whitelist semSetSmoothScrollEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setHoverScrollDelay(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public blacklist setHoverScrollSpeed(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x17

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    return-void
.end method

.method public blacklist setIgnoreDelaychildPrerssedState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final whitelist smoothScrollBy(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    iget-object p2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/ScrollView;->mLastScroll:J

    return-void
.end method

.method public final blacklist smoothScrollByWithDuration(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr p2, v4

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean p2, p0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz p2, :cond_1

    sget-object v1, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v5, 0x0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/ScrollView;->mLastScroll:J

    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .locals 1

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public final blacklist smoothScrollToWithDuration(III)V
    .locals 1

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

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
