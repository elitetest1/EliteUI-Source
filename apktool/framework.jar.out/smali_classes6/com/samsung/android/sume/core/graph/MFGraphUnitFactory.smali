.class public abstract Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;
.super Ljava/lang/Object;
.source "MFGraphUnitFactory.java"


# instance fields
.field private final blacklist mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;


# direct methods
.method protected constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-class p1, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    new-instance p1, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addBufferChannelSupplier(Ljava/util/function/Supplier;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    return-void
.end method

.method protected static blacklist getFilterId(Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->clear()V

    return-void
.end method

.method public abstract blacklist newBufferChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;
.end method

.method public abstract blacklist newDiskCache()Lcom/samsung/android/sume/core/cache/DiskCache;
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->mediaFilterFactory:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist newNode(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract blacklist parallelizeFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
.end method
