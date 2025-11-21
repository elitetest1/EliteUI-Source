.class public Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.source "UcmKeyStoreRSACipherSpi.java"


# instance fields
.field private blacklist mBuffer:[B

.field private blacklist mBufferOffset:I

.field private blacklist mIsInputTooLarge:Z

.field private blacklist mModulusSizeBytes:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public blacklist doFinalInternal(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    array-length v2, v0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    array-length p1, v0

    new-array p1, p1, [B

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {v0, v3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_1
    :goto_0
    iput v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    return-object v0

    :cond_2
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input must be under "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "Invalid input data"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getModulusSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return p0
.end method

.method public blacklist initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .locals 1

    check-cast p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    invoke-virtual {p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    return-object p1
.end method

.method public blacklist isModeSupported(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "NONE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ECB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isPaddingSupported(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "PKCS1PADDING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NOPADDING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public blacklist update([BII)V
    .locals 4

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    :cond_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    return-void
.end method
