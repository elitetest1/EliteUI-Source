.class public Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CRLReason.java"


# static fields
.field public static final blacklist AA_COMPROMISE:I = 0xa

.field public static final blacklist AFFILIATION_CHANGED:I = 0x3

.field public static final blacklist CA_COMPROMISE:I = 0x2

.field public static final blacklist CERTIFICATE_HOLD:I = 0x6

.field public static final blacklist CESSATION_OF_OPERATION:I = 0x5

.field public static final blacklist KEY_COMPROMISE:I = 0x1

.field public static final blacklist PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final blacklist REMOVE_FROM_CRL:I = 0x8

.field public static final blacklist SUPERSEDED:I = 0x4

.field public static final blacklist UNSPECIFIED:I = 0x0

.field public static final blacklist aACompromise:I = 0xa

.field public static final blacklist affiliationChanged:I = 0x3

.field public static final blacklist cACompromise:I = 0x2

.field public static final blacklist certificateHold:I = 0x6

.field public static final blacklist cessationOfOperation:I = 0x5

.field public static final blacklist keyCompromise:I = 0x1

.field public static final blacklist privilegeWithdrawn:I = 0x9

.field private static final blacklist reasonString:[Ljava/lang/String;

.field public static final blacklist removeFromCRL:I = 0x8

.field public static final blacklist superseded:I = 0x4

.field private static final blacklist table:Ljava/util/Hashtable;

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    const-string/jumbo v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    const-string/jumbo v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string/jumbo v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string/jumbo v7, "unknown"

    const-string/jumbo v8, "removeFromCRL"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    if-ltz p1, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid CRL reason : not in (0..MAX)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .locals 1

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;
    .locals 3

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    return-object p0
.end method


# virtual methods
.method public blacklist getValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_1

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "invalid"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRLReason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
