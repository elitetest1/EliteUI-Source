.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# instance fields
.field private blacklist data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getCerts()[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    sget-object p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

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

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getProducedAt()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getResponderId()Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public blacklist getResponses()[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    .locals 5

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public blacklist getSignature()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignatureAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignatureAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTBSResponseData()[B
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVersion()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist hasExtensions()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception processing sig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
