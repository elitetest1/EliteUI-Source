.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SignerInfoGenerator.java"


# instance fields
.field private blacklist calculatedDigest:[B

.field private blacklist certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

.field private final blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

.field private final blacklist sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final blacklist signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

.field private final blacklist signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private final blacklist unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method private blacklist getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "contentType"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "digestAlgID"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "signatureAlgID"

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    :goto_0
    move-object v5, v1

    :goto_1
    move-object v4, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v4, v6, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object p1

    const-string v1, "encryptedDigest"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    :cond_2
    move-object v8, v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "encoding error."

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method public blacklist getCalculatedDigest()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCalculatingOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getGeneratedVersion()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object p0
.end method

.method public blacklist getSignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public blacklist getUnsignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public blacklist hasAssociatedCertificate()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method
