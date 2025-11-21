.class public Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;
.super Ljava/lang/Object;
.source "NNFilterCreator.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$newFilter$0(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->getHw()Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;-><init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 4

    check-cast p2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getNNFWProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;

    invoke-direct {p3}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-static {p3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v0, :cond_0

    new-instance p3, Lcom/samsung/android/sume/core/filter/SyncFilter;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/samsung/android/sume/core/filter/SyncFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;->DNC:Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;

    invoke-direct {p3, v1, p0}, Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p3

    :goto_0
    new-instance p0, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;-><init>(Lcom/samsung/android/sume/core/types/ImgpType;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setLatestPluginsOrder(Z)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->of(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p3

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    invoke-virtual {p1, v2, p2, p3}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getInputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->deepCopy()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setKeepFilterDatatype(Z)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->setFormat(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    return-object p1
.end method
