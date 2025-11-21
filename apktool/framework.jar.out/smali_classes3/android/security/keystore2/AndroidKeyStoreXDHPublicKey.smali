.class public Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreXDHPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/XECPublicKey;


# static fields
.field private static final blacklist X25519_KEY_SIZE_BYTES:I = 0x20

.field private static final blacklist X509_PREAMBLE:[B

.field private static final blacklist X509_PREAMBLE_WITH_NULL:[B


# instance fields
.field private final blacklist mEncodedKey:[B

.field private final blacklist mPreambleLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    return-void

    nop

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
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x2ct
        0x30t
        0x7t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x5t
        0x0t
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

    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    if-eqz p3, :cond_1

    sget-object p1, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE:[B

    invoke-static {p1, p3}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result p1

    sget-object p2, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->X509_PREAMBLE_WITH_NULL:[B

    invoke-static {p2, p3}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->matchesPreamble([B[B)I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key size is not correct size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty encoded key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist matchesPreamble([B[B)I
    .locals 9

    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v5, p0

    const/4 v7, 0x0

    array-length v8, p0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Ljava/util/Arrays;->compare([BII[BII)I

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    array-length p0, v3

    return p0
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "XDH"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "x.509"

    return-object p0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    sget-object p0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    return-object p0
.end method

.method blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 7

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    iget-wide v2, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    const-string v5, "XDH"

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreXDHPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v0
.end method

.method public whitelist test-api getU()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mEncodedKey:[B

    iget p0, p0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;->mPreambleLength:I

    array-length v2, v1

    invoke-static {v1, p0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
