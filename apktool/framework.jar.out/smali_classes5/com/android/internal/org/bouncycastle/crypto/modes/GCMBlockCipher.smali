.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist MAX_INPUT_SIZE:J = 0xfffffffe0L


# instance fields
.field private blacklist H:[B

.field private blacklist J0:[B

.field private blacklist S:[B

.field private blacklist S_at:[B

.field private blacklist S_atPre:[B

.field private blacklist atBlock:[B

.field private blacklist atBlockPos:I

.field private blacklist atLength:J

.field private blacklist atLengthPre:J

.field private blacklist blocksRemaining:I

.field private blacklist bufBlock:[B

.field private blacklist bufOff:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist initialised:Z

.field private blacklist lastKey:[B

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist nonce:[B

.field private blacklist totalLength:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher cannot be reused for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GCM cipher needs to be initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private blacklist decryptBlock([BI[BI)V
    .locals 8

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_0
    new-array v2, v1, [B

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BI[BI)V

    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist encryptBlock([BI[BI)V
    .locals 6

    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_0
    new-array v0, v1, [B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 p3, 0x10

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist gHASH([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist gHASHBlock([B[B)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist gHASHBlock([B[BI)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist gHASHPartial([B[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist getNextCTRBlock([B)V
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    ushr-int/lit8 v1, v2, 0x8

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xd

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xc

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to process too many blocks"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getTotalInputSizeAfterNewInput(I)J
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private blacklist initCipher()V
    .locals 9

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v5, v6, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_1
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-object v0
.end method

.method private blacklist processPartial([BII[BI)V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private blacklist reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p1, :cond_3

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_b

    sub-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_a

    goto :goto_0

    :goto_1
    if-lez v8, :cond_3

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    move-object v5, p0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processPartial([BII[BI)V

    goto :goto_2

    :cond_3
    move-object v5, p0

    move-object v9, p1

    move v10, p2

    :goto_2
    iget-wide p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v0, p2

    add-long/2addr p0, v0

    iput-wide p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p0, p0, v0

    const-wide/16 v0, 0x8

    const/16 p1, 0x10

    const/4 v4, 0x0

    if-lez p0, :cond_7

    if-lez p2, :cond_4

    iget-object p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {v5, p0, v6, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    :cond_4
    iget-wide v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long p0, v6, v2

    if-lez p0, :cond_5

    iget-object p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_5
    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const-wide/16 v6, 0x7f

    add-long/2addr v2, v6

    const/4 p0, 0x7

    ushr-long/2addr v2, p0

    new-array p0, p1, [B

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez p2, :cond_6

    new-instance p2, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;

    invoke-direct {p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;-><init>()V

    iput-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {p2, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    :cond_6
    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {p2, v2, v3, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {p2, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    iget-object p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_7
    new-array p0, p1, [B

    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v2, v0

    invoke-static {v2, v3, p0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v0

    const/16 p2, 0x8

    invoke-static {v2, v3, p0, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {v5, p2, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    new-array p0, p1, [B

    iget-object p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {p1, p2, v4, p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    iget p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p2, p1, [B

    iput-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {p0, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz p0, :cond_8

    iget-object p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int p2, v10, p1

    iget p1, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {p0, v4, v9, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v8, p0

    goto :goto_3

    :cond_8
    iget p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p1, p0, [B

    iget-object p2, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p2, v8, p1, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, v5, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_3
    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v8

    :cond_9
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "mac check in GCM failed"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/GCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMac()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array p0, p0, [B

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int/2addr p1, p0

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p1, p0

    :cond_1
    rem-int/lit8 p0, p1, 0x10

    sub-int/2addr p1, p0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    instance-of v2, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v2, :cond_1

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    const/16 v6, 0x80

    if-gt v5, v6, :cond_0

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid value for MAC size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v2, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_c

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    :goto_0
    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v4

    :goto_1
    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v2, :cond_b

    array-length v5, v2

    if-lt v5, v1, :cond_b

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz p1, :cond_5

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "cannot reuse nonce for GCM encryption"

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    :cond_6
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p2, p1, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz p2, :cond_a

    :goto_3
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v2, v0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_8

    array-length v2, v0

    invoke-static {v0, p1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v0, 0xf

    aput-byte v1, p2, v0

    goto :goto_4

    :cond_8
    array-length v1, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    new-array p2, v4, [B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v5, 0x8

    mul-long/2addr v0, v5

    invoke-static {v0, v1, p2, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    :goto_4
    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array p2, v4, [B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/4 p2, -0x2

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz p2, :cond_9

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be specified in initial init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV must be at least 1 byte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processAADByte(B)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 p1, 0x10

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processAADBytes([BII)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const-wide/16 v1, 0x10

    if-lez v0, :cond_1

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    :cond_1
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_0
    if-gt p2, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    iget-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processByte(B[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length p1, v1

    const/4 v0, 0x0

    if-ne v2, p1, :cond_1

    iget-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/16 v2, 0x10

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {p1, v2, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    :goto_0
    return v2

    :cond_1
    return v0

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-lez v0, :cond_1

    rsub-int/lit8 v3, v0, 0x10

    if-ge p3, v3, :cond_0

    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x10

    :goto_1
    if-gt p2, v0, :cond_2

    add-int v3, p5, v2

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->encryptBlock([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_2
    sub-int/2addr p3, p2

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, p0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v0

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    if-ge p3, v3, :cond_4

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v1

    :cond_4
    if-lt v4, v2, :cond_6

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {v0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    if-ge p3, v3, :cond_5

    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    return v2

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    add-int/2addr p3, p2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v4, v3

    sub-int/2addr p3, v4

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    rsub-int/lit8 v5, v4, 0x10

    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v4, p5, v0

    invoke-direct {p0, v3, v1, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    add-int/2addr p2, v5

    add-int/2addr v0, v2

    :goto_3
    if-gt p2, p3, :cond_7

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->decryptBlock([BI[BI)V

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_7
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length p5, p4

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    iput p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_8
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input exceeded 68719476704 bytes"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return-void
.end method
