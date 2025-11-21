.class public Lcom/samsung/vekit/Manager/LayerManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->LAYER:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist create(Lcom/samsung/vekit/Common/Type/LayerType;Ljava/lang/String;)Lcom/samsung/vekit/Layer/Layer;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/LayerManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/samsung/vekit/Manager/LayerManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$LayerType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/LayerType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lcom/samsung/vekit/Layer/CaptionLayer;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Layer/CaptionLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/vekit/Layer/DoodleLayer;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Layer/DoodleLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/vekit/Layer/ImageLayer;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Layer/ImageLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/vekit/Layer/AudioLayer;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Layer/AudioLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/samsung/vekit/Layer/MediaLayer;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Layer/MediaLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/LayerManager;->add(Ljava/lang/Object;)V

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    const-string p2, "create: "

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
