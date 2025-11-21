.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "StateLayout.java"


# instance fields
.field public blacklist MAX_CACHE_ELEMENTS:I

.field public blacklist cacheListElementsId:[I

.field public blacklist currentLayoutIndex:I

.field public blacklist inTransition:Z

.field private blacklist mIndexId:I

.field public blacklist measuredLayoutIndex:I

.field public blacklist previousLayoutIndex:I

.field public blacklist statePaintedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    const/16 p2, 0x10

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .locals 1

    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist checkEndOfTransition()V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object p0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isGone()Z

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mVisibility:I

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->needsRepaint()V

    :cond_0
    return-void
.end method

.method public blacklist collapsePaintedComponents()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v5, v2, v3

    if-eqz v5, :cond_0

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_2

    aget-object v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_0

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object p0

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    return-void
.end method

.method public blacklist findAnimatedComponents()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setX(F)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setY(F)V

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    aput-object v4, v5, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->collapsePaintedComponents()V

    return-void
.end method

.method public blacklist getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v4, :cond_0

    if-ne v2, p1, :cond_1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object p0
.end method

.method public blacklist hideLayoutsOtherThan(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_0

    if-eq v1, p1, :cond_1

    iput v0, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist inflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->inflate()V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->hideLayoutsOtherThan(I)V

    return-void
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    return-void
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 8

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getComponentId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-eqz v7, :cond_1

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mFirstLayout:Z

    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->findAnimatedComponents()V

    :cond_0
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v8

    iget-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v1, v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v2

    if-ne v2, v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v13, v2, v3

    if-eq v1, v13, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setX(F)V

    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setY(F)V

    iput v10, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_0

    :cond_2
    move-object/from16 v7, p6

    goto :goto_1

    :cond_3
    move-object/from16 v7, p6

    goto :goto_0

    :cond_4
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    move-object v8, v1

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    const/4 v14, 0x1

    if-eq v1, v9, :cond_a

    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-virtual {v15, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move v2, v10

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_5

    move-object v3, v1

    aget-object v1, v3, v2

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    if-eq v12, v1, :cond_6

    invoke-virtual {v4, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    :cond_6
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v2, v5, :cond_7

    invoke-virtual {v4, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_4

    :cond_7
    if-eq v12, v1, :cond_8

    invoke-virtual {v4, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    :cond_8
    :goto_4
    if-eq v12, v1, :cond_9

    move-object v4, v3

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    move-object v5, v4

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    move-object v6, v5

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    move-object/from16 v16, v6

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_5

    :cond_9
    move/from16 v17, v2

    move-object/from16 v16, v3

    :goto_5
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, v16

    goto :goto_3

    :cond_a
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v1, v2, :cond_e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    if-eq v4, v9, :cond_d

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    :cond_d
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    invoke-virtual {v3, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .locals 1

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 12

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->invalidateMeasure()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v3, v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v3, v5, :cond_2

    iput v2, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    :cond_2
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v3, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v5

    if-nez v5, :cond_3

    iput v1, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const/4 v3, -0x1

    if-eqz v1, :cond_f

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    if-le v5, v6, :cond_6

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array v5, v6, [I

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    :cond_6
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v7

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v8

    move v9, v2

    :goto_3
    if-ge v9, v6, :cond_8

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v11, v10, v9

    if-ne v11, v8, :cond_9

    aput v3, v10, v9

    add-int/lit8 v7, v7, -0x1

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    if-lez v7, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v7

    invoke-virtual {p1, v5, v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v7

    move v8, v2

    :goto_5
    if-ge v8, v6, :cond_b

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v9, v9, v8

    if-ne v9, v7, :cond_c

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    :cond_e
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_12

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v5

    if-eq v5, v3, :cond_12

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    aget-object v4, v2, v4

    if-eqz v1, :cond_11

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v2, v2, v5

    if-eqz v2, :cond_11

    if-eq v4, v2, :cond_11

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_11
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_6

    :cond_12
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_10

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->checkEndOfTransition()V

    :cond_14
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "indexId"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "STATE_LAYOUT"

    return-object p0
.end method
