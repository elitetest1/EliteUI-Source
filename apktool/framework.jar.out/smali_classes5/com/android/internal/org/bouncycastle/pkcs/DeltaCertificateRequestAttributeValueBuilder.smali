.class public Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
.super Ljava/lang/Object;
.source "DeltaCertificateRequestAttributeValueBuilder.java"


# instance fields
.field private blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist subjectPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subjectPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
    .locals 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subjectPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.16.840.1.114027.80.6.2"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)V

    return-object p0
.end method

.method public blacklist setSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist setSubject(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/DeltaCertificateRequestAttributeValueBuilder;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method
