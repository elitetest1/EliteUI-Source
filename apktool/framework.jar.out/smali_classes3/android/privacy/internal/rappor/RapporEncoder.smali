.class public Landroid/privacy/internal/rappor/RapporEncoder;
.super Ljava/lang/Object;
.source "RapporEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final blacklist INSECURE_SECRET:[B

.field private static final blacklist sSecureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final blacklist mConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final blacklist mEncoder:Lcom/google/android/rappor/Encoder;

.field private final blacklist mIsSecure:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    return-void

    nop

    :array_0
    .array-data 1
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    iput-boolean v2, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    move-object/from16 v8, p3

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Random;

    iget-object v3, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/privacy/internal/rappor/RapporEncoder;->getInsecureSeed(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    sget-object v3, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    move-object v8, v3

    :goto_0
    move-object v5, v2

    new-instance v4, Lcom/google/android/rappor/Encoder;

    iget-object v9, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    iget v10, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    iget-wide v11, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    iget-wide v13, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    iget-wide v2, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    iget v6, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    iget v1, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    move/from16 v17, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v18, v1

    move-wide v15, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/rappor/Encoder;-><init>(Ljava/util/Random;Ljava/security/MessageDigest;Ljava/security/MessageDigest;[BLjava/lang/String;IDDDII)V

    iput-object v4, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    return-void
.end method

.method public static blacklist createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;
    .locals 2

    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;
    .locals 3

    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method private blacklist getInsecureSeed(Ljava/lang/String;)J
    .locals 1

    :try_start_0
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unable generate insecure seed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public blacklist encodeBits([B)[B
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeBits([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist encodeBoolean(Z)[B
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeBoolean(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist encodeString(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/privacy/internal/rappor/RapporEncoder;->getConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .locals 0

    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object p0
.end method

.method public blacklist isInsecureEncoderForTest()Z
    .locals 0

    iget-boolean p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
