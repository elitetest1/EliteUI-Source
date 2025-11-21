.class public final Lcom/samsung/android/sume/core/message/Response;
.super Lcom/samsung/android/sume/core/message/Message;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/message/Response$ListenerManager;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist bufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist responseListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/Response;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    const/16 v0, 0x3e0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Message;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "buffer-list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    :cond_0
    iget p1, p0, Lcom/samsung/android/sume/core/message/Response;->extra:I

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sume/core/message/Response;->extra:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->unRegister(I)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->responseListener:Ljava/util/function/Consumer;

    :cond_1
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->data:Ljava/util/Map;

    iget p1, p0, Lcom/samsung/android/sume/core/message/Response;->extra:I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sume/core/message/Response;->extra:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->unRegister(I)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->responseListener:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object p0
.end method

.method static synthetic blacklist lambda$toString$2(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer-list="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response;-><init>(I)V

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Response;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/message/Response;

    return-object p0
.end method

.method public static blacklist of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Response;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/message/Response;

    return-object p0
.end method

.method public static blacklist of(Landroid/os/Message;)Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response;-><init>(Landroid/os/Message;)V

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object p0
.end method

.method blacklist getBufferList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getResponseListener()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Response;->responseListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public blacklist join(Lcom/samsung/android/sume/core/message/Response;)Lcom/samsung/android/sume/core/message/Response;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->data:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/android/sume/core/message/Response;->data:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/samsung/android/sume/core/message/Response;->code:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Response;->code:I

    iget v0, p1, Lcom/samsung/android/sume/core/message/Response;->type:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Response;->type:I

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Response;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Response;->exception:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->exception:Ljava/lang/Exception;

    :cond_3
    :goto_1
    iget v0, p1, Lcom/samsung/android/sume/core/message/Response;->extra:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/samsung/android/sume/core/message/Response;->extra:I

    iput v0, p0, Lcom/samsung/android/sume/core/message/Response;->extra:I

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Response;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/samsung/android/sume/core/message/Response;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->replyTo:Landroid/os/Messenger;

    :cond_5
    iget-object p1, p1, Lcom/samsung/android/sume/core/message/Response;->responseListener:Ljava/util/function/Consumer;

    if-eqz p1, :cond_6

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->responseListener:Ljava/util/function/Consumer;

    :cond_6
    return-object p0
.end method

.method synthetic blacklist lambda$getBuffer$1$com-samsung-android-sume-core-message-Response(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method synthetic blacklist lambda$toString$3$com-samsung-android-sume-core-message-Response()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist post()Lcom/samsung/android/sume/core/message/Message;
    .locals 5

    const-string v0, "fail to send response: "

    const-string/jumbo v1, "send response: "

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Response;->replyTo:Landroid/os/Messenger;

    if-nez v2, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/message/Response;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no reply object given for code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skip to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/sume/core/message/Response;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->toAndroidMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sume/core/message/Response;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v3, Lcom/samsung/android/sume/core/message/Response;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iput-object v2, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    return-object p0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    throw v0
.end method

.method public blacklist post(Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;)Lcom/samsung/android/sume/core/message/Response;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->bundledDataHandler:Lcom/samsung/android/sume/core/message/Message$BundledDataHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->post()Lcom/samsung/android/sume/core/message/Message;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/message/Response;

    return-object p0
.end method

.method public blacklist setBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Response;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    return-object p0
.end method

.method public varargs blacklist setBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/message/Response;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist toAndroidMessage()Landroid/os/Message;
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/message/Response;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toAndroidMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sume/core/message/Message;->toAndroidMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/Response;->bufferList:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    const-string v2, "buffer-list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Response$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sume/core/message/Response;->contentToString(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
