.class public Landroid/security/keystore2/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAuthorizations:[Landroid/system/keystore2/Authorization;

.field private final blacklist mDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private final blacklist mKeyId:J

.field private final blacklist mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    iput-wide p2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-object p4, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iget-wide p0, p1, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getAuthorizations()[Landroid/system/keystore2/Authorization;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iget-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 p0, 0x4

    iput p0, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method blacklist getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-object p0
.end method

.method blacklist getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const/16 p0, 0x20

    ushr-long v4, v2, p0

    long-to-int p0, v4

    add-int/2addr v0, p0

    mul-int/2addr v0, v1

    long-to-int p0, v2

    add-int/2addr v0, p0

    return v0
.end method
