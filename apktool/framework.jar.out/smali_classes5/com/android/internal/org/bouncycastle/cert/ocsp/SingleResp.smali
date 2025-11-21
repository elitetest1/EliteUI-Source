.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
.super Ljava/lang/Object;
.source "SingleResp.java"


# instance fields
.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getSingleExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public blacklist getCertID()Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public blacklist getCertStatus()Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .locals 2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getCertStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getStatus()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;-><init>()V

    return-object p0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNextUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getThisUpdate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
