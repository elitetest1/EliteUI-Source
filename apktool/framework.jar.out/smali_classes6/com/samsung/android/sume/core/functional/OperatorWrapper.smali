.class public Lcom/samsung/android/sume/core/functional/OperatorWrapper;
.super Lcom/samsung/android/sume/core/functional/OpPriorityComputable;
.source "OperatorWrapper.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist formatUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            "Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist formatUpdater:Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;

.field protected blacklist processor:Lcom/samsung/android/sume/core/functional/Operator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->formatUpdaterMap:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->processor:Lcom/samsung/android/sume/core/functional/Operator;

    sget-object p2, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->formatUpdaterMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->formatUpdater:Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/format/MutableMediaFormat;)V
    .locals 0

    return-void
.end method

.method static synthetic blacklist lambda$new$1()Lcom/samsung/android/sume/core/functional/MediaFormatUpdater;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$of$2(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/OperatorWrapper;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$of$3(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/functional/Operator;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ")",
            "Lcom/samsung/android/sume/core/functional/Operator;"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/sume/core/functional/OperatorChain;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorChain;

    check-cast p1, Lcom/samsung/android/sume/core/functional/OperatorChain;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/functional/OperatorChain;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Enum;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/OperatorChain;-><init>(Ljava/lang/Enum;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ">;)",
            "Lcom/samsung/android/sume/core/functional/Operator;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/functional/OperatorWrapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/functional/OperatorMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->processor:Lcom/samsung/android/sume/core/functional/Operator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p0

    return-object p0
.end method
