.class public Lcom/samsung/vekit/Layer/DoodleLayer;
.super Lcom/samsung/vekit/Layer/Layer;
.source "DoodleLayer.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/LayerType;->DOODLE:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Layer/Layer;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/LayerType;ILjava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 p2, 0x0

    sget-object p3, Lcom/samsung/vekit/Common/Type/ItemType;->DOODLE:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    sget-object p3, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/samsung/vekit/Layer/DoodleLayer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    return-void
.end method
