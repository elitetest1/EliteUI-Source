.class public Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.source "UcmKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RSA"

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "RSA"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
