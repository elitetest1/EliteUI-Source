.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ComponentModifiers.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addAll(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist getHorizontalScrollDimension()F
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getVerticalScrollDimension()F
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasHorizontalScroll()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasVerticalScroll()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 6

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p3

    move v1, p4

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v3

    add-float/2addr v4, v3

    sub-float/2addr v1, v4

    :cond_1
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 8

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move p5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 8

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move p5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 8

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move p5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .locals 8

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    :goto_1
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move p4, v6

    move p5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .locals 10

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 6

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->markNotDirty()V

    :cond_1
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v3

    add-float/2addr v1, v3

    :cond_2
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v3, :cond_4

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_0

    :cond_5
    neg-float p0, v0

    neg-float v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "ComponentModifiers"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "modifiers"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    const-string v0, "MODIFIERS"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setHorizontalScrollDimension(FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setHorizontalScrollDimension(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setVerticalScrollDimension(FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setVerticalScrollDimension(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist size()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "ComponentModifiers \n"

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    return-void
.end method
