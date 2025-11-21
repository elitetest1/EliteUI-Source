.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SignerInfoGeneratorBuilder.java"


# instance fields
.field private blacklist contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private blacklist directSignature:Z

.field private blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private blacklist signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private blacklist unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method private blacklist createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v1, v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p1

    move-object v2, p2

    if-nez v0, :cond_4

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {p1}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_4
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1
.end method


# virtual methods
.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V

    return-object p0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[B)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setContentDigest(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist setDirectSignature(Z)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    return-object p0
.end method

.method public blacklist setSignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public blacklist setUnsignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method
