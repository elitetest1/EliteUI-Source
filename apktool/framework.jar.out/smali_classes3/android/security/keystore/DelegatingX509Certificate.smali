.class Landroid/security/keystore/DelegatingX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "DelegatingX509Certificate.java"


# instance fields
.field private final greylist-max-o mDelegate:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor greylist-max-o <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public whitelist test-api getBasicConstraints()I
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSignature()[B
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTBSCertificate()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getVersion()I
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method
