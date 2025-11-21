.class public Lcom/android/internal/view/ScrollViewCaptureHelper;
.super Ljava/lang/Object;
.source "ScrollViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarEnabled:Z

.field private blacklist mStartScrollY:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr p4, v0

    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    iput p4, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    neg-int p3, p4

    invoke-virtual {v3, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr p4, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p3, p4, v3}, Landroid/graphics/Rect;->offset(II)V

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p4, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, p4, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    iget p0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr p4, p0

    iput p4, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2, v3, p0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v3, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget p3, p0, Landroid/graphics/Point;->x:I

    neg-int p3, p3

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    invoke-virtual {v3, p3, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    sub-int/2addr p0, p3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {v3, p0, p3}, Landroid/graphics/Rect;->offset(II)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    iget p1, p2, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, v1, p4}, Landroid/graphics/Rect;->offset(II)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p0, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
