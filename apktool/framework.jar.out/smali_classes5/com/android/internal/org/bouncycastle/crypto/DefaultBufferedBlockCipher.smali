.class public Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.source "DefaultBufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_1

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_4

    instance-of p1, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    const-string p1, "OpenPGP"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    return-void

    :cond_4
    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "data not block size aligned"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    return v1

    :cond_2
    :try_start_1
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short for doFinal()"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    throw p1
.end method

.method public blacklist getBlockSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist getOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p0, p0

    rem-int v0, p1, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p0, p0

    rem-int v0, p1, p0

    :goto_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    array-length p1, v0

    const/4 v1, 0x0

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    return p1

    :cond_0
    return v1
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr v2, v3

    const/4 v6, 0x0

    if-le p3, v2, :cond_4

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v1, v3, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v7

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    div-int v3, p3, p2

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    add-int v5, p5, v7

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result p2

    add-int/2addr v7, p2

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    mul-int/2addr v3, p2

    sub-int/2addr p3, v3

    add-int/2addr v2, v3

    :cond_2
    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-le p3, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v3, p5, v7

    invoke-interface {v2, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v7, v2

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_4
    move v7, v6

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length p3, p2

    if-ne p1, p3, :cond_6

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int p3, p5, v7

    invoke-interface {p1, p2, v6, p4, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    add-int/2addr v7, p1

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    :cond_6
    return v7

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
