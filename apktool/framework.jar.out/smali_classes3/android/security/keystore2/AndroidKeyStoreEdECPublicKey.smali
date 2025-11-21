.class public Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreEdECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/EdECPublicKey;


# static fields
.field private static final blacklist DER_KEY_PREFIX:[B

.field private static final blacklist ED25519_KEY_SIZE_BYTES:I = 0x20


# instance fields
.field private blacklist mEncodedKey:[B

.field private blacklist mPoint:Ljava/security/spec/EdECPoint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V
    .locals 1

    move-object v0, p4

    move-object p4, p3

    move-object p3, p5

    move-object p5, v0

    invoke-direct/range {p0 .. p5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    sget-object p1, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    invoke-static {p1, p3}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->matchesPreamble([B[B)I

    move-result p1

    if-eqz p1, :cond_0

    array-length p2, p3

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key size is not correct size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist matchesPreamble([B[B)I
    .locals 3

    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->compare([B[B)I

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static blacklist pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    invoke-static {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->reverse([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Ljava/security/spec/EdECPoint;

    invoke-direct {p0, v0, v2}, Ljava/security/spec/EdECPoint;-><init>(ZLjava/math/BigInteger;)V

    return-object p0
.end method

.method private static blacklist reverse([B)V
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .locals 0

    sget-object p0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object p0
.end method

.method public whitelist test-api getPoint()Ljava/security/spec/EdECPoint;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    return-object p0
.end method

.method blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 7

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-wide v2, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    const-string v5, "EdDSA"

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v0
.end method
