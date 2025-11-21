.class public Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
.super Ljava/lang/Object;
.source "MFDescriptorGraph.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;,
        Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

.field private final blacklist option:Lcom/samsung/android/sume/core/graph/Graph$Option;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    const-class v1, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/graph/Graph$Option;

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    array-length p0, v0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, v0, p1

    iget-object v2, v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    instance-of v2, v2, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    sget-object v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "node: isKeepFilterDatatype "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->isKeepFilterDatatype()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "node: isMultipleInputOutput "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->isBatchIO()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-void
.end method

.method synthetic constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;-><init>([Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .locals 0

    check-cast p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    return-object p0
.end method

.method static synthetic blacklist lambda$new$1(I)[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .locals 0

    new-array p0, p0, [Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    return-object p0
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$2(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;)Landroid/util/Pair;
    .locals 2

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->newNode(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/graph/GraphNode;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$3(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;-><init>()V

    :cond_2
    invoke-virtual {p3, p4, p0, p1, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    return-void
.end method

.method static synthetic blacklist lambda$toMediaFilterGraph$4(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;Landroid/util/Pair;)V
    .locals 8

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v0, v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v4, v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    iget-object v5, v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Lcom/samsung/android/sume/core/graph/GraphNode;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/sume/core/graph/GraphNode;

    const/4 p2, 0x0

    aput-object v7, p1, p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->addNode([Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;

    move-object v6, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getOption()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    return-object p0
.end method

.method public blacklist toMediaFilterGraph(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)Lcom/samsung/android/sume/core/graph/Graph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;",
            ")",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toMediaFilterGraph: option="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;Lcom/samsung/android/sume/core/graph/Graph$Option;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/graph/MFGraph$Builder;->build()Lcom/samsung/android/sume/core/graph/Graph;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->nodes:[Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
