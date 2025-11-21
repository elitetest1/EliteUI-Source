.class public final Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;
.super Ljava/lang/Object;
.source "SecretKeyWithEncapsulation.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private final blacklist encapsulation:[B

.field private final blacklist secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor blacklist <init>(Ljavax/crypto/SecretKey;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0, p1}, Ljavax/crypto/SecretKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncapsulation()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->encapsulation:[B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/SecretKeyWithEncapsulation;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->hashCode()I

    move-result p0

    return p0
.end method
