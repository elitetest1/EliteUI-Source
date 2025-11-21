.class Lcom/android/internal/widget/OrientationHelper$2;
.super Lcom/android/internal/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OrientationHelper;->createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OrientationHelper;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getDecoratedEnd(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public blacklist getDecoratedMeasurement(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public blacklist getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public blacklist getDecoratedStart(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public blacklist getEnd()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0
.end method

.method public blacklist getEndAfterPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist getEndPadding()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public blacklist getMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result p0

    return p0
.end method

.method public blacklist getModeInOther()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result p0

    return p0
.end method

.method public blacklist getStartAfterPadding()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public blacklist getTotalSpace()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public blacklist getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public blacklist offsetChild(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public blacklist offsetChildren(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method
