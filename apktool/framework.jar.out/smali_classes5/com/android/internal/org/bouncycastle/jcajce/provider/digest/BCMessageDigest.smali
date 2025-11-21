.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.super Ljava/security/MessageDigest;
.source "BCMessageDigest.java"


# instance fields
.field protected blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field protected blacklist digestSize:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return-void
.end method


# virtual methods
.method public whitelist test-api engineDigest([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    if-lt p3, v0, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    if-lt p3, v0, :cond_0

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p3, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return p0

    :cond_0
    new-instance p0, Ljava/security/DigestException;

    const-string p1, "insufficient space in the output buffer to store the digest"

    invoke-direct {p0, p1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/DigestException;

    const-string p1, "partial digests not returned"

    invoke-direct {p0, p1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineDigest()[B
    .locals 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public whitelist test-api engineGetDigestLength()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return p0
.end method

.method public whitelist test-api engineReset()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public whitelist test-api engineUpdate(B)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public whitelist test-api engineUpdate([BII)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
