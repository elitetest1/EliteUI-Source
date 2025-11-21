.class public Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;
.super Ljava/lang/Object;
.source "BcDefaultDigestProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

.field private static final blacklist lookup:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->createTable()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createTable()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$1;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$2;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$3;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$4;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$5;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    sget-object p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    const-string p1, "cannot recognise digest"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
