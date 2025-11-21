.class Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field blacklist mCoordinate:I

.field blacklist mLayoutFromEnd:Z

.field blacklist mPosition:I

.field blacklist mValid:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/LinearLayoutManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method


# virtual methods
.method blacklist assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void
.end method

.method public blacklist assignFromView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method public blacklist assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v3, v0

    if-gez v3, :cond_2

    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v3, v3, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    if-lez v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v4, p1

    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object p1, p1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    if-gez p1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int p1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_2
    return-void
.end method

.method blacklist isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
