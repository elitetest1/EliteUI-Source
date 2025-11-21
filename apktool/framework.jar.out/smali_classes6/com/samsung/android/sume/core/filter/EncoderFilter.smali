.class public Lcom/samsung/android/sume/core/filter/EncoderFilter;
.super Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.source "EncoderFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist orientation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    return-void
.end method

.method private blacklist isReachedLastFrame(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isReachedLastTimestamp(J)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$configCodec$0(Lcom/samsung/android/sume/core/message/Message;)Landroid/util/Pair;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "i-frame-interval"

    const-string v3, "frame-rate"

    const-string/jumbo v4, "rotation-degrees"

    const-string/jumbo v5, "media-format="

    const-string/jumbo v6, "not supported type"

    sget-object v7, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "configCodec: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    const-string/jumbo v9, "mime"

    invoke-virtual {v1, v9}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getBitrate()I

    move-result v10

    const/4 v11, 0x0

    const-string v12, "bitrate"

    if-nez v10, :cond_1

    invoke-virtual {v1, v12}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v13

    cmpl-float v13, v13, v11

    if-eqz v13, :cond_1

    int-to-double v13, v10

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v10

    move v15, v11

    move-object/from16 v16, v12

    float-to-double v11, v10

    move-wide/from16 v17, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v13, v17, v10

    double-to-int v10, v13

    goto :goto_0

    :cond_1
    move v15, v11

    move-object/from16 v16, v12

    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v11

    :try_start_0
    invoke-virtual {v11}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getRectSize()Landroid/util/Pair;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v12, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-virtual {v6, v12}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v12, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    int-to-float v12, v12

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-float v6, v6

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    :cond_2
    invoke-static {v9, v12, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v8, "color-format"

    const v12, 0x7f000789

    invoke-virtual {v6, v8, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "vendor.qti-ext-enc-linear-color-format.value"

    invoke-virtual {v6, v2, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    invoke-virtual {v6, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "sample-rate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "channel-count"

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9, v2, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    :cond_4
    :goto_1
    move-object/from16 v1, v16

    invoke-virtual {v6, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2, v2, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v1, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    instance-of v2, v1, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iget-object v2, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(Landroid/view/Surface;)V

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->signalCodecFromReady()V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 23

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->awaitCodecToReady()V

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    instance-of v7, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    iput v8, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "[enc: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v11, v8

    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->release()V

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const-wide/16 v12, 0x2710

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "[bhko] buffer="

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "dequeue input buffer: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v8, :cond_5

    const-string/jumbo v0, "reached-eos"

    invoke-interface {v15, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    goto :goto_3

    :cond_3
    const-wide/16 v12, 0x1e

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v12, Ljava/nio/ByteBuffer;

    invoke-interface {v15, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string/jumbo v13, "timestampUs"

    invoke-interface {v15, v13, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v22, 0x0

    const/16 v18, 0x0

    move/from16 v17, v8

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "input channel is already closed"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-interface {v15}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    :cond_6
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "dequeue output buffer"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v8, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "buffer st="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", info="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "retry dequeue output buffer"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    move-object v15, v2

    move-object/from16 v16, v3

    move-object v14, v4

    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_8
    const/4 v12, -0x2

    if-ne v8, v12, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "track format = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v12, "media-type"

    invoke-interface {v8, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    if-eqz v13, :cond_9

    const-string/jumbo v14, "rotation-degrees"

    invoke-virtual {v12, v14, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    const-string/jumbo v13, "media-format"

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v13, 0x3

    invoke-interface {v12, v13, v8}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "now ready to start encode"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    if-ltz v8, :cond_7

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "track-idx"

    invoke-interface {v13, v15, v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "buffer-info"

    invoke-interface {v13, v14, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "flag="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v14, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    iput v14, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    const/4 v11, 0x1

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "size="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v14, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v14, :cond_e

    iget v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "# of encoded frames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v2

    move-object/from16 v16, v3

    iget-wide v2, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "total # :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", last ts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v14, v4

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_d

    iget v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastFrame(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-wide v2, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_d
    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {v5, v13}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move-object v15, v2

    move-object/from16 v16, v3

    move-object v14, v4

    :goto_5
    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "encoder reached eos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    if-nez v7, :cond_f

    invoke-interface {v5, v13}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_6
    move v8, v2

    move-object v4, v14

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string/jumbo v1, "no media-codec given, might be released"

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
