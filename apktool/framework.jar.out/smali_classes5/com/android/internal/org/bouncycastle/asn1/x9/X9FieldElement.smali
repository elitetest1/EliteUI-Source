.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static blacklist converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected blacklist f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public blacklist getValue()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->converter:Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldElement;->f:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
