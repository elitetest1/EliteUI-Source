.class public Lcom/samsung/android/sume/core/message/MessageChannelRouter;
.super Ljava/lang/Object;
.source "MessageChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist errorListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist eventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist messageSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$addMessageSubscriber$2(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$queryMessageChannel$0()Ljava/util/stream/Stream;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$removeMessageSubscriber$3(Lcom/samsung/android/sume/core/message/MessageSubscriber;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    const-string v1, "addMessageSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getSubscribeMessages()[Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3e1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3de

    if-ne v5, v6, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->drainTo(Ljava/util/List;)I

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V

    invoke-static {v0}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    iget-object v0, v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Message;

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method synthetic blacklist lambda$addMessageSubscriber$1$com-samsung-android-sume-core-message-MessageChannelRouter(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/MessagePublisher;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method blacklist queryMessageChannel(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "messageChannels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->replayChannel:Lcom/samsung/android/sume/core/message/MessageChannelRouter$ReplayMessageChannel;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public blacklist removeMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
