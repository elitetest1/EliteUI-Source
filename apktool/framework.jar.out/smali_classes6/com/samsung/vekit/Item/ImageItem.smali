.class public Lcom/samsung/vekit/Item/ImageItem;
.super Lcom/samsung/vekit/Item/Item;
.source "ImageItem.java"


# instance fields
.field private blacklist filter:Lcom/samsung/vekit/Common/Object/Filter;

.field private blacklist filterIntensity:F

.field private blacklist filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field private blacklist opacity:F

.field private blacklist toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    new-instance p1, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    new-instance p1, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {p1}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method private blacklist initializeTone()V
    .locals 1

    new-instance v0, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    return-void
.end method


# virtual methods
.method public blacklist checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object p0

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->IMAGE:Lcom/samsung/vekit/Common/Type/ContentType;

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object p0

    sget-object p1, Lcom/samsung/vekit/Common/Type/ContentType;->ANIMATED_IMAGE:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "isInvalidElement : please set image or animated_image(content)."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Item/ImageItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object p0
.end method

.method public blacklist getFilterIntensity()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    return p0
.end method

.method public blacklist getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object p0
.end method

.method public blacklist getMeshType()Lcom/samsung/vekit/Common/Type/MeshType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Item/ImageItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object p0
.end method

.method public blacklist getOpacity()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    return p0
.end method

.method public blacklist getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/ImageItem;

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContent: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic blacklist setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/ImageItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/ImageItem;->setDuration(J)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object p0
.end method

.method public bridge synthetic blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setFilterIntensity(F)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    return-object p0
.end method

.method public bridge synthetic blacklist setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setFilterIntensity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method public blacklist setMeshType(Lcom/samsung/vekit/Common/Type/MeshType;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object p0
.end method

.method public bridge synthetic blacklist setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    return-object p0
.end method

.method public bridge synthetic blacklist setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setPadding(J)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/ImageItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/ImageItem;->setPadding(J)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Item/ImageItem;

    return-object p0
.end method

.method public bridge synthetic blacklist setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/ToneInfo;->setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V

    return-object p0
.end method
