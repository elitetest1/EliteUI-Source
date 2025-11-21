.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final greylist-max-o SAMPLES_PER_FRAME:I = 0xa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final greylist-max-o mBuf:[B

.field private greylist-max-o mBufIn:I

.field private greylist-max-o mBufOut:I

.field greylist-max-o mCodec:Landroid/media/MediaCodec;

.field greylist-max-o mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mOneByte:[B

.field greylist-max-o mSawInputEOS:Z

.field greylist-max-o mSawOutputEOS:Z


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const-string v2, "AmrInputStream"

    const-string v3, "@@@@ AmrInputStream is not a public API @@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    const-string v3, "audio/3gpp"

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sample-rate"

    const/16 v3, 0x1f40

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    const/16 v3, 0x2fa8

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Landroid/media/MediaCodecList;

    invoke-direct {v2, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v2, p1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    :cond_0
    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    :cond_1
    :goto_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v1

    :catchall_1
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_2
    iget-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v1

    :catchall_2
    move-exception v1

    iput-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-string v0, "AmrInputStream"

    const-string v1, "AmrInputStream wasn\'t closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_0
    return-void
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public whitelist test-api read([BII)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-nez v0, :cond_5

    iput v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iput v3, p0, Landroid/media/AmrInputStream;->mBufIn:I

    :goto_0
    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    const/4 v1, 0x1

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-gez v8, :cond_0

    goto :goto_4

    :cond_0
    move v10, v3

    :goto_1
    const/16 v0, 0x140

    if-ge v10, v0, :cond_2

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v6, v10, 0x140

    invoke-virtual {v0, v5, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    goto :goto_2

    :cond_1
    add-int/2addr v10, v0

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-virtual {v0, v1, v3, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v0, :cond_3

    move v13, v4

    goto :goto_3

    :cond_3
    move v13, v3

    :goto_3
    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_4
    :goto_4
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v7, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v7, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v5, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v5, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/AmrInputStream;->mBufIn:I

    invoke-virtual {v5, v6, v3, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    :cond_5
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v0, v1, :cond_7

    sub-int v2, v1, v0

    move/from16 v3, p3

    if-le v3, v2, :cond_6

    sub-int/2addr v1, v0

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    move/from16 v4, p2

    invoke-static {v2, v0, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    return v1

    :cond_7
    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v0, :cond_8

    iget-boolean p0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not open"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
