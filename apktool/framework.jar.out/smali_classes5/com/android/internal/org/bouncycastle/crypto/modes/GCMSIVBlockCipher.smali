.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.super Ljava/lang/Object;
.source "GCMSIVBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;,
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;
    }
.end annotation


# static fields
.field private static final blacklist ADD:B = -0x1ft

.field private static final blacklist AEAD_COMPLETE:I = 0x2

.field private static final blacklist BUFLEN:I = 0x10

.field private static final blacklist HALFBUFLEN:I = 0x8

.field private static final blacklist INIT:I = 0x1

.field private static final blacklist MASK:B = -0x80t

.field private static final blacklist MAX_DATALEN:I = 0x7fffffe7

.field private static final blacklist NONCELEN:I = 0xc


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist macBlock:[B

.field private final blacklist theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private final blacklist theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private final blacklist theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private blacklist theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private blacklist theFlags:I

.field private final blacklist theGHash:[B

.field private blacklist theInitialAEAD:[B

.field private final blacklist theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist theNonce:[B

.field private blacklist thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private final blacklist theReverse:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillReverse([BII[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist bufLength([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method private blacklist calculateTag()[B
    .locals 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->completePolyVal()[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    aget-byte v4, v0, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    aget-byte v5, v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, -0x81

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, v0, v2, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v1
.end method

.method private blacklist checkAEADStatus(I)V
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const p0, 0x7fffffe7

    sub-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AEAD byte count exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AEAD data cannot be processed after ordinary data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher is not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkBuffer([BIIZ)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->bufLength([B)I

    move-result p0

    add-int v0, p1, p2

    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short."

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short."

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw p0
.end method

.method private blacklist checkStatus(I)V
    .locals 6

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    int-to-long v0, v0

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x7ffffff7

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x7fffffe7

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v0, v4

    int-to-long p0, p1

    sub-long/2addr v2, p0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "byte count exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher is not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist completePolyVal()[B
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHashLengths()V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-object v1
.end method

.method private blacklist decryptPlain()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x10

    if-ltz v2, :cond_2

    invoke-static {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    const/16 v4, 0xf

    aget-byte v5, v3, v4

    or-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lez v2, :cond_0

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v3, v6, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v0, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v9, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v9, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    sub-int/2addr v2, v8

    add-int/2addr v7, v8

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v1, p0

    invoke-static {v0, v6, p0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->reset()V

    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "mac check failed"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Data too short"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v4

    new-array v5, v4, [B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    const/4 v7, 0x4

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static {v6, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 p1, 0x8

    invoke-static {v2, v9, v3, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v9, v3, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v9, v5, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v9, v5, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v9, v5, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v1, 0x18

    invoke-static {v2, v9, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p1, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    invoke-static {v3, v9, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->mulX([B)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/2addr p1, v7

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    return-void
.end method

.method private blacklist encryptPlain([B[BI)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    const/16 v1, 0xf

    aget-byte v2, p1, v1

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    const/16 v1, 0x10

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, p1, v4, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    add-int v7, p3, v5

    invoke-static {v2, v4, p2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v6

    add-int/2addr v5, v6

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result p0

    return p0
.end method

.method private static blacklist fillReverse([BII[B)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xf

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist gHASH([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[B)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-interface {p1, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private blacklist gHashLengths()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method private static blacklist incrementCounter([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static blacklist mulX([B)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    shr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v2, -0x80

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, -0x1f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :cond_2
    return-void
.end method

.method private blacklist resetStreams()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->clearBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    :cond_2
    return-void
.end method

.method private static blacklist xorBlock([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist xorBlock([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->getOutputSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->encryptPlain([B[BI)I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    add-int/2addr p2, v4

    invoke-static {v1, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length p2, p1

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->decryptPlain()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v2

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-GCM-SIV"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMac()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p1, v1

    return p1

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result p0

    add-int/2addr p1, p0

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_3

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid nonce"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to GCM-SIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processAADByte(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-boolean p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p5, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    :goto_0
    return p4
.end method

.method public blacklist reset()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return-void
.end method
