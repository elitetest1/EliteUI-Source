.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->values()[Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->restoreState([B)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    const/16 v0, 0x100

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    return-object p0
.end method

.method public blacklist doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-384"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public blacklist getEncodedState()[B
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->getEncodedStateSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    invoke-super {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public blacklist reset()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method
