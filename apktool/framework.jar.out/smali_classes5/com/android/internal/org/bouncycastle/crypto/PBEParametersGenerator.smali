.class public abstract Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected blacklist iterationCount:I

.field protected blacklist password:[B

.field protected blacklist salt:[B


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist PKCS12PasswordToBytes([C)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static blacklist PKCS5PasswordToBytes([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v2, v1, [B

    :goto_0
    if-eq v0, v1, :cond_0

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static blacklist PKCS5PasswordToUTF8Bytes([C)[B
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public abstract blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public blacklist getIterationCount()I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return p0
.end method

.method public blacklist getPassword()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object p0
.end method

.method public blacklist getSalt()[B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object p0
.end method

.method public blacklist init([B[BI)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
