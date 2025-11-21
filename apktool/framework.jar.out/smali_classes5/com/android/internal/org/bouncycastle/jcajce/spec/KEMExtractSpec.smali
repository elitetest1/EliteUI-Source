.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;
.super Ljava/lang/Object;
.source "KEMExtractSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist encapsulation:[B

.field private final blacklist keyAlgorithmName:Ljava/lang/String;

.field private final blacklist keySizeInBits:I

.field private final blacklist privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor blacklist <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    return-void
.end method


# virtual methods
.method public blacklist getEncapsulation()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getKeyAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getKeySize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    return p0
.end method

.method public blacklist getPrivateKey()Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method
