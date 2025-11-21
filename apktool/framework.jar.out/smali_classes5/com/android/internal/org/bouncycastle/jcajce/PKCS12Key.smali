.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final blacklist password:[C

.field private final blacklist useWrongZeroLengthConversion:Z


# direct methods
.method public constructor blacklist <init>([C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    return-void
.end method

.method public constructor blacklist <init>([CZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [C

    :cond_0
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    array-length p0, p1

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS12"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [B

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS12"

    return-object p0
.end method

.method public whitelist test-api getPassword()[C
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    return-object p0
.end method
