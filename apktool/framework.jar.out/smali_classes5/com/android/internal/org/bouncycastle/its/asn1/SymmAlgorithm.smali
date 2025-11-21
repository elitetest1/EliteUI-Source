.class public Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SymmAlgorithm.java"


# static fields
.field public static blacklist aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;


# instance fields
.field private blacklist symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->aes128Ccm:Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    return-object p1

    :cond_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V

    return-object p0
.end method

.method public blacklist getSymmAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method

.method public blacklist setSymmAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SymmAlgorithm;->symmAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
