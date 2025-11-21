.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;
.super Ljava/lang/Object;
.source "FPEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

.field private final blacklist tweak:[B

.field private final blacklist useInverse:Z


# direct methods
.method public constructor blacklist <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;-><init>(I[BZ)V

    return-void
.end method

.method public constructor blacklist <init>(I[BZ)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->tweak:[B

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->useInverse:Z

    return-void
.end method


# virtual methods
.method public blacklist getRadix()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result p0

    return p0
.end method

.method public blacklist getRadixConverter()Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    return-object p0
.end method

.method public blacklist getTweak()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->tweak:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isUsingInverseFunction()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->useInverse:Z

    return p0
.end method
