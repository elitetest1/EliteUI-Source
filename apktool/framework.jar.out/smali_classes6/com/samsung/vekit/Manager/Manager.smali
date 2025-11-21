.class public Lcom/samsung/vekit/Manager/Manager;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/vekit/Common/Object/Element;"
    }
.end annotation


# instance fields
.field protected blacklist index:I

.field protected blacklist managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

.field protected blacklist map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->MANAGER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Manager"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    iput v2, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    return-void
.end method

.method private blacklist getTargetElementType(Lcom/samsung/vekit/Common/Type/ManagerType;)Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Manager/Manager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ManagerType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ManagerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unexpected manager type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object p0
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Element;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method

.method protected blacklist generateUniqueId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v1, 0x7ffffffe

    if-ge v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/vekit/Manager/Manager;->index:I

    return p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Map is full"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist remove(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, v0}, Lcom/samsung/vekit/Manager/Manager;->getTargetElementType(Lcom/samsung/vekit/Common/Type/ManagerType;)Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Manager/Manager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to remove item["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] with managerType["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->managerType:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V

    return-void
.end method

.method public blacklist size()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Manager/Manager;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method
