.class public Lcom/samsung/vekit/Item/EmptyItem;
.super Lcom/samsung/vekit/Item/Item;
.source "EmptyItem.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "isInvalidElement : EmptyItem cannot have a content."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/EmptyItem;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/EmptyItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/EmptyItem;

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/vekit/Item/EmptyItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContent: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/EmptyItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/EmptyItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/EmptyItem;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/EmptyItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/EmptyItem;->setDuration(J)Lcom/samsung/vekit/Item/EmptyItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/EmptyItem;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/EmptyItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/EmptyItem;->setPadding(J)Lcom/samsung/vekit/Item/EmptyItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/EmptyItem;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/EmptyItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/EmptyItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/EmptyItem;

    move-result-object p0

    return-object p0
.end method
