.class public Lcom/samsung/vekit/Manager/FilterManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "FilterManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Common/Object/Filter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->FILTER:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Manager/FilterManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist create(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/Filter;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/FilterManager;->generateUniqueId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/samsung/vekit/Common/Object/Filter;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/FilterManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/samsung/vekit/Common/Object/Filter;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Manager/FilterManager;->add(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Manager/FilterManager;->TAG:Ljava/lang/String;

    const-string p2, "create: "

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
