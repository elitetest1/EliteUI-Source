.class public final Landroid/security/net/config/CertificatesEntryRef;
.super Ljava/lang/Object;
.source "CertificatesEntryRef.java"


# instance fields
.field private final blacklist mDisableCT:Z

.field private final greylist-max-o mOverridesPins:Z

.field private final greylist-max-o mSource:Landroid/security/net/config/CertificateSource;


# direct methods
.method public constructor blacklist <init>(Landroid/security/net/config/CertificateSource;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    iput-boolean p2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    iput-boolean p3, p0, Landroid/security/net/config/CertificatesEntryRef;->mDisableCT:Z

    return-void
.end method


# virtual methods
.method blacklist disableCT()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mDisableCT:Z

    return p0
.end method

.method public greylist-max-o findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
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

    iget-object p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {p0, p1}, Landroid/security/net/config/CertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/security/net/config/TrustAnchor;

    iget-boolean p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v0, p1, p0}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    return-object v0
.end method

.method public greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/security/net/config/TrustAnchor;

    iget-boolean p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v0, p1, p0}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    return-object v0
.end method

.method public greylist-max-o getTrustAnchors()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {v1}, Landroid/security/net/config/CertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    new-instance v3, Landroid/security/net/config/TrustAnchor;

    iget-boolean v4, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    invoke-direct {v3, v2, v4}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .locals 0

    iget-object p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    invoke-interface {p0}, Landroid/security/net/config/CertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method greylist-max-o overridesPins()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    return p0
.end method
