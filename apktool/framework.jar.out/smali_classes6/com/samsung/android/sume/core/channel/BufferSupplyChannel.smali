.class public Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;
.super Ljava/lang/Object;
.source "BufferSupplyChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/channel/BufferChannel;",
        "Ljava/util/function/Supplier<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private blacklist supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->cancel()V

    return-void
.end method

.method public blacklist close()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->close()V

    return-void
.end method

.method public blacklist configure(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public blacklist get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->supplier:Ljava/util/function/Supplier;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isClosedForReceive()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result p0

    return p0
.end method

.method public blacklist isClosedForSend()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForSend()Z

    move-result p0

    return p0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->channel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/BufferSupplyChannel;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
