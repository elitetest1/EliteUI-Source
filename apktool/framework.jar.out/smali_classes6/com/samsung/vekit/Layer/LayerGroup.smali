.class public Lcom/samsung/vekit/Layer/LayerGroup;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "LayerGroup.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/HierarchyInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Interface/HierarchyInterface<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# instance fields
.field protected blacklist animationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected blacklist isVisible:Z

.field blacklist layerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist panel:Lcom/samsung/vekit/Panel/Panel;

.field blacklist totalDuration:J


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "LayerGroup"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {p1}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist calculateAutoDurationItems()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/LayerType;->AUDIO:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/Type/LayerType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v3

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v3, v4}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    long-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setDuration(J)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/FragmentAudioItem;->update()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist attach(Lcom/samsung/vekit/Layer/Layer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void
.end method

.method public blacklist attach(Lcom/samsung/vekit/Layer/Layer;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result p1

    invoke-virtual {v0, p0, p2, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void
.end method

.method public bridge synthetic blacklist attach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public bridge synthetic blacklist attach(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;I)V

    return-void
.end method

.method public blacklist attach(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v0, "attachAnimation: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist calculateTotalDuration()J
    .locals 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Layer/Layer;

    iget-object v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/VEContext;->getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/FrameworkType;->SINGLE:Lcom/samsung/vekit/Common/Type/FrameworkType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Item/Item;

    iget-wide v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v1}, Lcom/samsung/vekit/Item/Item;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/samsung/vekit/Item/Item;->getPadding()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v6}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v7

    sget-object v8, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v7, v8}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v7}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/samsung/vekit/Item/Item;->getDuration()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/samsung/vekit/Item/Item;->getPadding()J

    move-result-wide v9

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "total duration : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "layerDuration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Final total duration : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", FrameworkMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Type/FrameworkType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateAutoDurationItems()V

    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public blacklist checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object p0

    sget-object p1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "isInvalidElement : please attach correct uiAnimation(not TransitionAnimation) to LayerGroup."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public blacklist clearAnimations()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method public blacklist contains(Lcom/samsung/vekit/Layer/Layer;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->contains(Lcom/samsung/vekit/Layer/Layer;)Z

    move-result p0

    return p0
.end method

.method public blacklist detach(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public blacklist detach(Lcom/samsung/vekit/Layer/Layer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic blacklist detach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public blacklist detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v0, "detachAnimation: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist getAnimation(I)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Animation/Animation;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string p1, "failed to get animation (invalid index)"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string p1, "failed to getAnimationIndex (animation is null)"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist getAnimationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getChild(I)Lcom/samsung/vekit/Layer/Layer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Layer/Layer;

    return-object p0
.end method

.method public bridge synthetic blacklist getChild(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getChild(I)Lcom/samsung/vekit/Layer/Layer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getChildSize()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIndex(Lcom/samsung/vekit/Layer/Layer;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getIndex(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getIndex(Lcom/samsung/vekit/Layer/Layer;)I

    move-result p0

    return p0
.end method

.method public blacklist getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist getTotalDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public blacklist isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    return p0
.end method

.method public blacklist setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object p0
.end method

.method public blacklist setTotalDuration(J)Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-object p0
.end method

.method public blacklist setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    return-void
.end method

.method public blacklist swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    return-void
.end method

.method public bridge synthetic blacklist swap(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    check-cast p2, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method
