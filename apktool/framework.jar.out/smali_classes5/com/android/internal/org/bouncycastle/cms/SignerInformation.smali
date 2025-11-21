.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final blacklist content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

.field private final blacklist contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

.field private final blacklist isCounterSignature:Z

.field private blacklist resultDigest:[B

.field private final blacklist sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

.field private final blacklist signature:[B

.field protected final blacklist signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

.field protected final blacklist unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p2

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .locals 1

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    iget-object p2, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-void
.end method

.method public static blacklist addCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method

.method private blacklist doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v5, :cond_5

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v6, :cond_2

    instance-of v6, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v6, v5, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v6, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "data not encapsulated in signature - use detached constructor."

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyContentTypeAttributeValue()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyMessageDigestAttribute()V

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    :try_start_2
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz p1, :cond_9

    instance-of p1, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz p1, :cond_9

    check-cast v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    const-string p1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {p1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p0

    invoke-interface {v3, p1, p0}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p0

    return p0

    :cond_8
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p0

    invoke-interface {v3, p1, p0}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t create digest calculator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t create content verifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private blacklist encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v0, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "A "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST have a single attribute value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method

.method public static blacklist replaceUnsignedAttributes(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .locals 10

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-direct {p1, v3, v0, p0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method

.method private static blacklist translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method private blacklist verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist verifyContentTypeAttributeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "content-type"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "content-type attribute value does not match eContentType"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string p1, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private blacklist verifyMessageDigestAttribute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "message-digest"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v0, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v0, "message-digest attribute value does not match calculated value"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v0, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getContentDigest()[B
    .locals 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "method can only be called after verify."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public blacklist getDigestAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDigestAlgParams()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception getting digest parameters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getEncodedSignedAttributes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz p0, :cond_0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEncryptionAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncryptionAlgParams()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception getting encryption parameters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    return-object p0
.end method

.method public blacklist getSignature()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object p0
.end method

.method public blacklist getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object p0
.end method

.method public blacklist getVersion()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    return p0
.end method

.method public blacklist isCounterSignature()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return p0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    return-object p0
.end method

.method public blacklist verify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string/jumbo p1, "verifier not valid at signingTime"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result p0

    return p0
.end method
