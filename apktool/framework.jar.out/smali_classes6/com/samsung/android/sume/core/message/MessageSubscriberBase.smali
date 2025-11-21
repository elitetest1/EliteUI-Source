.class public abstract Lcom/samsung/android/sume/core/message/MessageSubscriberBase;
.super Ljava/lang/Object;
.source "MessageSubscriberBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageSubscriber;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist errorListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist eventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

.field protected blacklist messageConsumers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    return-void
.end method

.method static synthetic blacklist lambda$onMessageReceived$0(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageConsumer;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z

    return-void
.end method

.method static synthetic blacklist lambda$onMessageReceived$1()Ljava/util/stream/Stream;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sume/core/message/MessageConsumer;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$onMessageReceived$2(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageConsumer;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z

    return-void
.end method

.method static synthetic blacklist lambda$removeMessageConsumer$3(Lcom/samsung/android/sume/core/message/MessageConsumer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addMessageConsumer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageConsumer;->getConsumeMessage()[I

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, v1, v2

    const/16 v4, 0x3e1

    if-eq v3, v4, :cond_4

    invoke-static {v3}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3de

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_3
    const-string/jumbo p0, "no consume code given"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    return-void
.end method

.method public blacklist getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    return-object p0
.end method

.method public blacklist getSubscribeMessages()[Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x3e1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Integer;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected blacklist release()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close message channel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/message/MessageChannel;->cancel()V

    return-void
.end method

.method public blacklist removeMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
