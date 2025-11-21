.class public Lcom/samsung/android/sume/core/filter/DecoderFilter;
.super Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.source "DecoderFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/BufferSupplier;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$6Sgpc4x8fF8JhQ_bIZDedz3pEoE(Lcom/samsung/android/sume/core/filter/DecoderFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->supplyMediaBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    return-void
.end method

.method private blacklist supplyMediaBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "supplyMediaBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->awaitCodecToReady()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    sget-object v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dequeue input buffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_1

    :try_start_0
    const-string v2, "fail to dequeue input buffer, wait 50ms"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "retry to dequeue input buffer: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "success to dequeue input buffer: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    const-string v1, "buffer-idx"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method protected blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 7

    const-string/jumbo v0, "outputChannel: "

    sget-object v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configCodec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    const-string/jumbo v3, "mime"

    invoke-virtual {p1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    :try_start_0
    const-string/jumbo v4, "media-format"

    invoke-virtual {p1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/channel/BufferChannel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v2, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v4, "height"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    const/16 v6, 0x22

    invoke-interface {v5, v0, v4, v6}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(III)V

    check-cast v2, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string/jumbo v2, "vendor.qti-ext-dec-forceNonUBWC.value"

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "vendor.sec-dec-output.buffers.usage.value"

    const-wide/16 v4, 0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->signalCodecFromReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public blacklist getBufferSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/DecoderFilter;)V

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 21

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->awaitCodecToReady()V

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v4, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    iput-boolean v5, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "[dec: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->codecTag:Ljava/lang/String;

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_0
    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->release()V

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    const-string/jumbo v7, "timestampUs"

    const/4 v8, 0x1

    if-nez v0, :cond_5

    invoke-interface {v3}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v9, "chunk-size"

    invoke-interface {v0, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v9, "buffer-idx"

    invoke-interface {v0, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gez v13, :cond_4

    iget-object v14, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v8, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedInputEos:Z

    goto :goto_2

    :cond_4
    invoke-interface {v0, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move v11, v15

    move-wide v14, v9

    iget-object v10, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_2
    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v9, 0x2710

    invoke-virtual {v0, v6, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    const/4 v0, -0x1

    if-ne v9, v0, :cond_6

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "retry dequeue output buffer"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v0, -0x2

    if-ne v9, v0, :cond_7

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "output format changed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-ltz v9, :cond_0

    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "reached EOS"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->reachedOutputEos:Z

    instance-of v0, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    iget-object v10, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x5

    const-string v12, "last-timestampUs"

    invoke-interface {v0, v11, v12, v10}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    goto :goto_3

    :cond_8
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    const-string/jumbo v10, "reached-eos"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_a

    iget-wide v10, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gez v0, :cond_a

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "drop sample of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " before "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v0, :cond_c

    const-wide/16 v10, 0x28

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForSend()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    iget-wide v10, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {v0, v9, v10, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "output channel is already closed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableAudioOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v10

    const-class v11, Ljava/nio/ByteBuffer;

    invoke-interface {v10, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-wide v11, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v7, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v10}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v9, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcom/samsung/android/sume/core/filter/DecoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "# of decoded frames: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->processedFrames:I

    add-int/2addr v9, v8

    iput v9, v1, Lcom/samsung/android/sume/core/filter/DecoderFilter;->processedFrames:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->tagged(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string/jumbo v1, "no media-codec given, might be released"

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
