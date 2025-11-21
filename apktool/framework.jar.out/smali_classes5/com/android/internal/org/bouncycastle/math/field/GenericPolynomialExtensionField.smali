.class Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final blacklist minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

.field protected final blacklist subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;Lcom/android/internal/org/bouncycastle/math/field/Polynomial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v1, v3}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCharacteristic()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDegree()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result p0

    return p0
.end method

.method public blacklist getDimension()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public blacklist getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    return-object p0
.end method

.method public blacklist getSubfield()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
