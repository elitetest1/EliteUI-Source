.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "LayoutComponent.java"


# static fields
.field private static final blacklist USE_IMAGE_TEMP_FIX:Z = true


# instance fields
.field protected final blacklist mCachedAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mChildrenComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mChildrenHaveZIndex:Z

.field protected blacklist mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

.field protected blacklist mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

.field private blacklist mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

.field protected blacklist mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

.field protected blacklist mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

.field protected blacklist mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mPaddingBottom:F

.field protected blacklist mPaddingLeft:F

.field protected blacklist mPaddingRight:F

.field protected blacklist mPaddingTop:F

.field blacklist mScrollX:F

.field blacklist mScrollY:F

.field protected blacklist mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

.field protected blacklist mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-direct {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic blacklist lambda$paintingComponent$0(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 5

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    if-eqz p1, :cond_1

    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    :cond_1
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq p0, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne p0, p1, :cond_4

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    add-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public blacklist computeModifierDefinedPaddingHeight([F)F
    .locals 4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    aput v0, p1, p0

    const/4 p0, 0x1

    aput v1, p1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist computeModifierDefinedPaddingWidth([F)F
    .locals 4

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    aput v0, p1, p0

    const/4 p0, 0x1

    aput v1, p1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 5

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    if-eqz p1, :cond_1

    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    :cond_1
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq p0, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p0

    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne p0, p1, :cond_4

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    add-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public blacklist drawContent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    return-void
.end method

.method public blacklist getChildrenComponents()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return-object p0
.end method

.method public blacklist getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    return-object p0
.end method

.method public blacklist getLocationInWindow([FZ)V
    .locals 4

    const/4 p2, 0x0

    aget v0, p1, p2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, p2

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    :cond_0
    return-void
.end method

.method public blacklist getPaddingBottom()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    return p0
.end method

.method public blacklist getPaddingLeft()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    return p0
.end method

.method public blacklist getPaddingRight()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    return p0
.end method

.method public blacklist getPaddingTop()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    return p0
.end method

.method public blacklist getScrollX()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    invoke-interface {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollX(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    return p0
.end method

.method public blacklist getScrollY()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    invoke-interface {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollY(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    return p0
.end method

.method public blacklist getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    return-object p0
.end method

.method public blacklist getZIndex()F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->getValue()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndex:F

    return p0
.end method

.method public blacklist inflate()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object p0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getComponents(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v4, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v4, :cond_1

    iget-object v4, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v3

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setWidth(F)V

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setHeight(F)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-nez v4, :cond_0

    iget-object v4, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->inflate()V

    goto :goto_2

    :cond_3
    move-object v11, p0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getData(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    move-object v11, p0

    instance-of p0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    if-eqz p0, :cond_7

    instance-of p0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    if-eqz p0, :cond_5

    move-object p0, v3

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    :cond_5
    instance-of p0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz p0, :cond_6

    move-object p0, v3

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->inflate(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    :cond_6
    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V

    goto :goto_2

    :cond_7
    instance-of p0, v3, Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;

    if-eqz p0, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of p0, v3, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz p0, :cond_8

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v3, v11}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    :cond_8
    :goto_2
    move-object p0, v11

    goto/16 :goto_0

    :cond_9
    move-object v11, p0

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v1, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    goto :goto_3

    :cond_b
    const/4 p0, 0x0

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    iput p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_c
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_d

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v5

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v6

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v3

    iget v7, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v7, v4

    iput v7, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    iget v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v4, v6

    iput v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    iget v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    add-float/2addr v4, v5

    iput v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    iget v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    add-float/2addr v4, v3

    iput v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    goto :goto_4

    :cond_d
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v4, :cond_e

    iget-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez v4, :cond_e

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    goto :goto_4

    :cond_e
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v4, :cond_f

    iget-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez v4, :cond_f

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    goto :goto_4

    :cond_f
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    if-eqz v4, :cond_10

    move-object v1, v3

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    goto :goto_4

    :cond_10
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    if-eqz v4, :cond_11

    move-object v2, v3

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    goto :goto_4

    :cond_11
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v4, :cond_12

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    goto :goto_4

    :cond_12
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v4, :cond_13

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    goto :goto_4

    :cond_13
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v4, :cond_14

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    goto :goto_4

    :cond_14
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v4, :cond_c

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesHorizontalScroll()Z

    move-result v4

    if-eqz v4, :cond_15

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    :cond_15
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesVerticalScroll()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    goto/16 :goto_4

    :cond_16
    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez p0, :cond_17

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    :cond_17
    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez p0, :cond_18

    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    :cond_18
    if-eqz v1, :cond_19

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->setWidthIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;)V

    :cond_19
    if-eqz v2, :cond_1a

    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->setHeightIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;)V

    :cond_1a
    iget-object p0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eq p0, v1, :cond_1c

    const/4 p0, 0x0

    :goto_5
    iget-object v1, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1c

    iget-object v1, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-ne v2, v3, :cond_1b

    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V

    :cond_1b
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_1c
    invoke-virtual {v11, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p0

    invoke-virtual {v11, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setWidth(F)V

    invoke-virtual {v11, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p0

    invoke-virtual {v11, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setHeight(F)V

    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->startGraphicsLayer(II)V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->fillInAttributes(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->setGraphicsLayer(Ljava/util/HashMap;)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->endGraphicsLayer()V

    :cond_6
    neg-float p0, v2

    neg-float v1, v3

    invoke-virtual {p1, p0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_0
    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingLeft"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingRight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingTop"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v0, "paddingBottom"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist setCanvasOperations(Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    return-void
.end method

.method public blacklist setScrollX(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    return-void
.end method

.method public blacklist setScrollY(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "UNKNOWN LAYOUT_COMPONENT"

    return-object p0
.end method
