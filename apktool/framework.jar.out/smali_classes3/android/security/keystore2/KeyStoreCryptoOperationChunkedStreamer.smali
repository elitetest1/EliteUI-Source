.class Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;,
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CHUNK_SIZE_MAX:I = 0x8000

.field private static final blacklist DEFAULT_CHUNK_SIZE_THRESHOLD:I = 0x800


# instance fields
.field private final blacklist mChunk:[B

.field private blacklist mChunkLength:I

.field private final blacklist mChunkSizeMax:I

.field private final blacklist mChunkSizeThreshold:I

.field private blacklist mConsumedInputSizeBytes:J

.field private final blacklist mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private blacklist mProducedOutputSizeBytes:J


# direct methods
.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 2

    const/16 v0, 0x800

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-gtz p2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_0

    :cond_0
    if-le p2, p3, :cond_1

    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    :goto_0
    new-array p1, p3, [B

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object p1

    iget-object p2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    const/4 p3, 0x0

    iget v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-static {p2, p3, v0}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p2

    iget-object p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {p3, p2, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)[B

    move-result-object p2

    if-eqz p2, :cond_1

    iget-wide p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v0, p2

    int-to-long v0, v0

    add-long/2addr p3, v0

    iput-wide p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2

    :cond_1
    return-object p1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p3, :cond_7

    if-ltz p2, :cond_7

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const/4 v2, 0x0

    if-lez v1, :cond_3

    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-static {p1, p2, v3, v1, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result v1

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge v3, v4, :cond_1

    return-object v0

    :cond_1
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iget-object v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    :cond_2
    iget-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iput v2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    :cond_3
    :goto_0
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    if-lt p3, v1, :cond_5

    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge p3, v1, :cond_4

    move v1, p3

    :cond_4
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-static {p1, p2, v1}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    if-eqz v3, :cond_3

    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_5
    if-lez p3, :cond_6

    iget-object v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-static {p1, p2, v1, v2, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result p1

    iput p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    :cond_6
    iget-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length p3, v0

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v0

    :cond_7
    new-instance p0, Landroid/security/KeyStoreException;

    const/16 p1, -0x3e8

    const-string p2, "Input offset and length out of bounds of input array"

    invoke-direct {p0, p1, p2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p0
.end method
