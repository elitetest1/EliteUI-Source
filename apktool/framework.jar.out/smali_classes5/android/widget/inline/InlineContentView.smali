.class public Landroid/widget/inline/InlineContentView;
.super Landroid/view/ViewGroup;
.source "InlineContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;,
        Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InlineContentView"


# instance fields
.field private final blacklist mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final blacklist mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

.field private blacklist mParentPosition:[I

.field private blacklist mParentScale:Landroid/graphics/PointF;

.field private blacklist mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private blacklist mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

.field private blacklist mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

.field private final blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic blacklist $r8$lambda$hY51_U3Win3RXjXW6eX4jZQvrL8(Landroid/widget/inline/InlineContentView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/inline/InlineContentView;->lambda$onAttachedToWindow$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnReparentListener(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentPosition(Landroid/widget/inline/InlineContentView;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentScale(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControlCallback(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceView(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeParentPositionAndScale(Landroid/widget/inline/InlineContentView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/inline/InlineContentView;->computeParentPositionAndScale()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/inline/InlineContentView$1;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$1;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/widget/inline/InlineContentView$2;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$2;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;

    new-instance v0, Landroid/widget/inline/InlineContentView$3;

    invoke-direct {v0, p0}, Landroid/widget/inline/InlineContentView$3;-><init>(Landroid/widget/inline/InlineContentView;)V

    iput-object v0, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance v1, Landroid/widget/inline/InlineContentView$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/inline/InlineContentView$4;-><init>(Landroid/widget/inline/InlineContentView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, v2, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {v2, v1}, Landroid/widget/inline/InlineContentView;->addView(Landroid/view/View;)V

    const/4 p0, 0x2

    invoke-virtual {v2, p0}, Landroid/widget/inline/InlineContentView;->setImportantForAccessibility(I)V

    return-void
.end method

.method private blacklist computeParentPositionAndScale()V
    .locals 9

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    :cond_1
    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    aget v4, v1, v3

    aget v5, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    aget v6, v1, v3

    if-ne v4, v6, :cond_2

    aget v1, v1, v2

    if-eq v5, v1, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    :cond_4
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceRenderPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    iput v1, v6, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iput v7, v1, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v3, :cond_6

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceRenderPosition()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    iget-object v5, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v5, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iput v7, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    if-nez v3, :cond_9

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_8
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    :goto_3
    iput-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentPosition:[I

    iput-object v1, p0, Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;

    :goto_4
    if-eqz v2, :cond_b

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestUpdateSurfacePositionAndScale()V

    :cond_b
    return-void
.end method

.method private synthetic blacklist lambda$onAttachedToWindow$0(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isZOrderedOnTop()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isZOrderedOnTop()Z

    move-result p0

    return p0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/inline/InlineContentView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/inline/InlineContentView;)V

    invoke-interface {v0, v1}, Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;->getSurfacePackage(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;->onSurfacePackageReleased()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/inline/InlineContentView;->getMeasuredHeight()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/view/SurfaceView;->layout(IIII)V

    return-void
.end method

.method public blacklist setChildSurfacePackageUpdater(Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfacePackageUpdater:Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist setSurfaceControlCallback(Landroid/widget/inline/InlineContentView$SurfaceControlCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method public whitelist setZOrderedOnTop(Z)Z
    .locals 1

    iget-object p0, p0, Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    move-result p0

    return p0
.end method
