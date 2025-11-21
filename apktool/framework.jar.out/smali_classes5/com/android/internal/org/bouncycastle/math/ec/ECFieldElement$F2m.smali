.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final blacklist GNB:I = 0x1

.field public static final blacklist PPB:I = 0x3

.field public static final blacklist TPB:I = 0x2


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;


# direct methods
.method constructor blacklist <init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, v1, p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result p0

    return p0
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 0

    const-string p0, "F2m"

    return-object p0
.end method

.method public blacklist getFieldSize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return p0
.end method

.method public blacklist getK1()I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public blacklist getK2()I
    .locals 2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getK3()I
    .locals 2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getM()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return p0
.end method

.method public blacklist getRepresentation()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result p0

    return p0
.end method

.method public blacklist isZero()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p3, p3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p2, p3, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    iget p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result p0

    return p0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
