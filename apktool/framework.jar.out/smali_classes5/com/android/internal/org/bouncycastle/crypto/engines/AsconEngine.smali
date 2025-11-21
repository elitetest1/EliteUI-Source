.class public Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;
.source "AsconEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;,
        Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    }
.end annotation


# instance fields
.field private final blacklist ASCON_AEAD_RATE:I

.field private final blacklist ASCON_IV:J

.field private final blacklist CRYPTO_ABYTES:I

.field private final blacklist CRYPTO_KEYBYTES:I

.field private blacklist K0:J

.field private blacklist K1:J

.field private blacklist K2:J

.field private blacklist N0:J

.field private blacklist N1:J

.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private blacklist initialAssociatedText:[B

.field private final blacklist m_buf:[B

.field private blacklist m_bufPos:I

.field private final blacklist m_bufferSizeDecrypt:I

.field private blacklist m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field private blacklist mac:[B

.field private final blacklist nr:I

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result p1

    const/16 v0, 0x8

    const/16 v1, 0x10

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128 AEAD"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter setting for ASCON AEAD"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x7f7ff3f800000000L

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128a AEAD"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v1, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-80pq AEAD"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    :goto_0
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne p1, v0, :cond_3

    const/4 v0, 0x6

    :cond_3
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    return-void
.end method

.method private blacklist P(I)V
    .locals 2

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_0
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

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

.method private blacklist ROUND(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

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

    invoke-static {v5, v6, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v9, v5

    const/16 v13, 0x1c

    invoke-static {v5, v6, v13}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    const/16 v5, 0x27

    invoke-static {v11, v12, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v11

    const/16 v9, 0x3d

    invoke-static {v11, v12, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v9

    xor-long/2addr v5, v9

    iput-wide v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v3

    const/4 v9, 0x6

    invoke-static {v3, v4, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    not-long v3, v3

    iput-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    const/16 v3, 0xa

    invoke-static {v7, v8, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x11

    invoke-static {v7, v8, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-static {v1, v2, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private blacklist ascon_aeadinit()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private blacklist checkAAD()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private blacklist checkData()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v1

    :pswitch_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v1

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be reused for encryption"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    return v2

    :pswitch_4
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    const-wide/16 v3, -0x1

    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v6, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    iget v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v8, v5

    shl-int/lit8 v5, v8, 0x3

    rsub-int/lit8 v5, v5, 0x38

    shl-long/2addr v3, v5

    and-long/2addr v3, v6

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/lit8 v7, v7, 0x3

    rsub-int/lit8 v7, v7, 0x38

    shl-long/2addr v3, v7

    and-long/2addr v0, v3

    xor-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :goto_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    :goto_1
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v3, 0x1

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private blacklist finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    shl-long v2, v5, v4

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long v7, v5, v4

    or-long/2addr v2, v7

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    shl-long v2, v5, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    :goto_0
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-void
.end method

.method private blacklist processBufferAAD([BI)V
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private blacklist processBufferDecrypt([BI[BI)V
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x8

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist processBufferEncrypt([BI[BI)V
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 p4, p4, 0x8

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist processFinalDecrypt([BII[BI)V
    .locals 7

    const-wide/16 v0, -0x1

    const/16 v2, 0x8

    if-lt p3, v2, :cond_0

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    add-int/2addr p2, v2

    add-int/2addr p5, v2

    add-int/lit8 p3, p3, -0x8

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v2, v3, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v2, v3, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 p3, p3, 0x3

    ushr-long/2addr v0, p3

    and-long p3, p4, v0

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private blacklist processFinalEncrypt([BII[BI)V
    .locals 5

    const/16 v0, 0x8

    if-lt p3, v0, :cond_0

    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v1, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/2addr p2, v0

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, -0x8

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {p1, p2, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void
.end method

.method private blacklist reset(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    :cond_0
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " needs to be initialized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :goto_0
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const-string v1, "output buffer too short"

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v6

    add-int v3, p2, v0

    array-length v4, p1

    if-gt v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v5, 0x0

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    iget p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array p0, p0, [B

    iput-object p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget-wide p1, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object p2, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {p0, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget p1, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int p2, v8, p1

    iget p1, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {p0, v1, v7, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return v0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v3, p0

    move-object v7, p1

    move v8, p2

    iget p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget p1, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-lt p0, p1, :cond_4

    sub-int v10, p0, p1

    iput v10, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int p2, v8, v10

    array-length p0, v7

    if-gt p2, p0, :cond_3

    move v12, v8

    iget-object v8, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v9, 0x0

    move-object v11, v7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    iget-wide p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object p2, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr p0, v0

    iput-wide p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object p2, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v2

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    xor-long/2addr p0, v0

    iput-wide p0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v0, v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    or-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    invoke-direct {v3, p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return v10

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mac check in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAlgorithmVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v1.2"

    return-object p0
.end method

.method public blacklist getIVBytesSize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return p0
.end method

.method public blacklist getKeyBytesSize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return p0
.end method

.method public blacklist getMac()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :pswitch_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_1
    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_2
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, v0

    :goto_0
    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    rem-int p0, p1, p0

    sub-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    mul-int/2addr v4, v1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid value for MAC size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    :goto_0
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    array-length v0, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ne v0, v4, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v2, v4, :cond_5

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v2, v4, v5, p2, v6}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 p2, 0x0

    invoke-static {v3, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N0:J

    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-ne v2, v1, :cond_4

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/4 p2, 0x4

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    const/16 p2, 0xc

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    :goto_1
    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_2
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " key must be "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes long"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " requires exactly "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes of IV"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ascon Init parameters must include a key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to Ascon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processAADByte(B)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_0
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .locals 4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return-void

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processByte(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_7

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v0, :cond_1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v0

    if-ge p3, v2, :cond_0

    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_3

    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v1

    :cond_3
    move v2, v1

    :cond_4
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v4, p5, v2

    invoke-direct {p0, v3, v1, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v5, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_4

    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget p5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v2

    :cond_5
    sub-int/2addr v4, v3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v3, p5, v2

    invoke-direct {p0, v0, v1, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v0

    move v0, v2

    :goto_1
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt p3, v2, :cond_6

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_6
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    return v0

    :cond_7
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void
.end method
