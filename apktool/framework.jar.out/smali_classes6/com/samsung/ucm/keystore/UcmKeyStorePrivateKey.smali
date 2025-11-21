.class public Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.source "UcmKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field protected blacklist mECParameterSpec:Ljava/security/spec/ECParameterSpec;

.field protected blacklist mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "RSA"

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    const-string p2, "RSA"

    iget-object p3, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mModulus:Ljava/math/BigInteger;

    return-void

    :cond_0
    const-string p2, "EC"

    iget-object p3, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    check-cast p1, Ljava/security/interfaces/ECKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->equals(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
