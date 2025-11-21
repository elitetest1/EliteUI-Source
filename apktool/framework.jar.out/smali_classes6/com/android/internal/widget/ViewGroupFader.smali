.class public Lcom/android/internal/widget/ViewGroupFader;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;,
        Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$DefaultViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ParentContainerBoundsProvider;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_LOWER_BOUND:F = 0.5f

.field private static final blacklist CHAINED_BOUNDS_BOTTOM_FRACTION:F = 0.2f

.field private static final blacklist CHAINED_BOUNDS_TOP_FRACTION:F = 0.6f

.field private static final blacklist CHAINED_LOWER_REGION_FRACTION:F = 0.35f

.field private static final blacklist CHAINED_UPPER_REGION_FRACTION:F = 0.55f

.field private static final blacklist SCALE_LOWER_BOUND:F = 0.7f


# instance fields
.field private blacklist mAlphaLowerBound:F

.field private blacklist mBottomBoundPixels:F

.field private blacklist mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

.field private final blacklist mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

.field private blacklist mChainedBoundsBottom:F

.field private blacklist mChainedBoundsTop:F

.field private blacklist mChainedLowerRegion:F

.field private blacklist mChainedUpperRegion:F

.field private final blacklist mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

.field private final blacklist mContainerBounds:Landroid/graphics/Rect;

.field private blacklist mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

.field private final blacklist mOffsetViewBounds:Landroid/graphics/Rect;

.field protected final blacklist mParent:Landroid/view/ViewGroup;

.field private blacklist mScaleLowerBound:F

.field private blacklist mTopBoundPixels:F

.field private blacklist mTopInterpolator:Landroid/view/animation/BaseInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    iput-object p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    new-instance p1, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;

    invoke-direct {p1}, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    return-void
.end method

.method private blacklist fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V

    return-void
.end method

.method private static blacklist lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private blacklist scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    iget p0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    invoke-static {p0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private blacklist setDefaultSizeAndAlphaForView(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private blacklist setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    sub-float/2addr p3, p4

    div-float/2addr v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p3, p3, p4

    if-gez p3, :cond_1

    iget p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    :goto_0
    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p3

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v3, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromBottom(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p4, p2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    return-void

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p4, :cond_4

    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {p4, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromTop(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p4, p2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    return-void

    :cond_4
    if-nez v1, :cond_5

    iget-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->viewHasBecomeFullSize(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewGroupFader;->setDefaultSizeAndAlphaForView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method blacklist getAnimationCallback()Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    return-object p0
.end method

.method blacklist setAlphaLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    return-void
.end method

.method blacklist setBottomInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method blacklist setContainerBoundsProvider(Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    return-void
.end method

.method blacklist setScaleLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    return-void
.end method

.method blacklist setTopInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    return-void
.end method

.method public blacklist updateFade()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public blacklist updateListElementFades(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/widget/flags/Flags;->enableFadingViewGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ViewGroupFader;->fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
