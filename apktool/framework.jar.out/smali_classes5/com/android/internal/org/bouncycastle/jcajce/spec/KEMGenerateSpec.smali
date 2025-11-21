.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Ljava/lang/Object;
.source "KEMGenerateSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist keyAlgorithmName:Ljava/lang/String;

.field private final blacklist keySizeInBits:I

.field private final blacklist publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return-void
.end method


# virtual methods
.method public blacklist getKeyAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getKeySize()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return p0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method
