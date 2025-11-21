.class public Landroid/security/net/config/TrustedCertificateStoreAdapter;
.super Lcom/android/org/conscrypt/TrustedCertificateStore;
.source "TrustedCertificateStoreAdapter.java"


# instance fields
.field private final greylist-max-o mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object p1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-void
.end method


# virtual methods
.method public greylist-max-o test-api aliases()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api allSystemAliases()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api containsAlias(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {p0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o test-api findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {p0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public greylist-max-o test-api getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {p0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public greylist-max-o test-api isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 0

    iget-object p0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {p0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return p0
.end method

.method public greylist-max-o test-api userAliases()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
