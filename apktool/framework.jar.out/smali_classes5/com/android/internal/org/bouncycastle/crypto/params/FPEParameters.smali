.class public final Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;
.super Ljava/lang/Object;
.source "FPEParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private final blacklist radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

.field private final blacklist tweak:[B

.field private final blacklist useInverse:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[BZ)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[BZ)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    iput-boolean p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    return-void
.end method


# virtual methods
.method public blacklist getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    return-object p0
.end method

.method public blacklist getRadix()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result p0

    return p0
.end method

.method public blacklist getRadixConverter()Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    return-object p0
.end method

.method public blacklist getTweak()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isUsingInverseFunction()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    return p0
.end method
