.class public Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;
.super Ljava/lang/Object;
.source "ExternalPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist digest:[B

.field private final blacklist digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getLocation()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getHashAlg()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getHashValue()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ExternalKey"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 5

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->external_value:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    invoke-direct {v2, v3, v4, p0}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to encode composite key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method
