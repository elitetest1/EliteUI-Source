.class public Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# instance fields
.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist strength:I


# direct methods
.method public constructor blacklist <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return-void
.end method


# virtual methods
.method public blacklist getRandom()Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public blacklist getStrength()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return p0
.end method
