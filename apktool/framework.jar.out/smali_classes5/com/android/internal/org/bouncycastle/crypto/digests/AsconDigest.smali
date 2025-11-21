.class public Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;
.super Ljava/lang/Object;
.source "AsconDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    }
.end annotation


# instance fields
.field private final blacklist ASCON_PB_ROUNDS:I

.field private final blacklist CRYPTO_BYTES:I

.field private final blacklist algorithmName:Ljava/lang/String;

.field blacklist asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field private final blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->CRYPTO_BYTES:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-HashA"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter settings for Ascon Hash"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0xc

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-Hash"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->reset()V

    return-void
.end method

.method private blacklist LOADBYTES([BII)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p3, :cond_0

    add-int v2, p0, p2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    rsub-int/lit8 v4, p0, 0x7

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private blacklist P(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    return-void
.end method

.method private blacklist PAD(I)J
    .locals 2

    shl-int/lit8 p0, p1, 0x3

    rsub-int/lit8 p0, p0, 0x38

    const-wide/16 v0, 0x80

    shl-long p0, v0, p0

    return-wide p0
.end method

.method private blacklist ROR(JI)J
    .locals 2

    ushr-long v0, p1, p3

    rsub-int/lit8 p0, p3, 0x40

    shl-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist ROUND(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    xor-long v15, v3, v7

    xor-long/2addr v15, v13

    xor-long v15, v15, p1

    and-long v17, v9, v13

    move-wide/from16 v19, v3

    xor-long v3, v15, v17

    xor-long v15, v1, v19

    xor-long/2addr v7, v15

    xor-long v7, v7, p1

    move-wide/from16 p1, v7

    not-long v7, v1

    xor-long v15, v9, v13

    and-long/2addr v7, v15

    xor-long v7, p1, v7

    xor-long v9, v19, v9

    xor-long/2addr v9, v13

    xor-long/2addr v1, v13

    and-long v1, v1, v19

    xor-long/2addr v1, v9

    const/16 v9, 0x13

    invoke-direct {v0, v5, v6, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v9

    xor-long/2addr v9, v5

    const/16 v13, 0x1c

    invoke-direct {v0, v5, v6, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v5, 0x27

    invoke-direct {v0, v11, v12, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v11

    const/16 v9, 0x3d

    invoke-direct {v0, v11, v12, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v9

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v5, v3

    const/4 v9, 0x6

    invoke-direct {v0, v3, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    not-long v3, v3

    iput-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const/16 v3, 0xa

    invoke-direct {v0, v7, v8, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x11

    invoke-direct {v0, v7, v8, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    return-void
.end method

.method private blacklist STOREBYTES([BIJI)V
    .locals 3

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p5, :cond_0

    add-int v0, p0, p2

    rsub-int/lit8 v1, p0, 0x7

    shl-int/lit8 v1, v1, 0x3

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 10

    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long v3, v4, v6

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->PAD(I)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    const/16 v0, 0x20

    move v6, p2

    move p2, v0

    :goto_1
    if-le p2, v3, :cond_1

    iget-wide v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v9, 0x8

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    iget p0, v4, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {v4, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 p2, p2, -0x8

    move-object p0, v4

    goto :goto_1

    :cond_1
    move-object v4, p0

    move-object v5, p1

    iget-wide v7, v4, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->reset()V

    return v0

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer is too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getByteLength()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public blacklist getDigestSize()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public blacklist reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x1470194fc6528a6L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const-wide v0, 0x738ec38ac0adffa7L    # 4.301965536445435E248

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const-wide v0, 0x2ec8e3296c76384cL    # 2.5621814324380113E-83

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const-wide v0, -0x29095ab280adc883L    # -8.509507695364991E110

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const-wide v0, -0x5ec3bd5ddc417279L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    return-void

    :cond_1
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    return-void
.end method

.method public blacklist update(B)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
