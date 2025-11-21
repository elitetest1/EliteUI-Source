.class public Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final blacklist byteSize:I

.field private final blacklist delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getByteLength()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    return p0
.end method

.method public blacklist getDigestSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public blacklist update([BII)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
