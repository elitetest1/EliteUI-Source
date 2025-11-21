.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mBoundToSecureUserId:J

.field private final greylist-max-o mCriticalToDeviceEncryption:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final blacklist mMaxUsageCount:I

.field private final blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final blacklist mRollbackResistant:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequred:Z


# direct methods
.method private constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZIIZZZJZZZZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iput p4, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    iput-object p8, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    iput-boolean p10, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    iput-boolean p11, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    iput p12, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    iput p13, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    iput-boolean p14, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    iput-boolean p15, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    move/from16 p1, p23

    iput p1, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    move/from16 p1, p24

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZLandroid/security/keystore/KeyProtection-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p24}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBoundToSpecificSecureUserId()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Digests not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getMaxUsageCount()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    return p0
.end method

.method public whitelist getMgf1Digests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Mask generation function (MGF) not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getPurposes()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return p0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    return p0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return p0
.end method

.method public greylist-max-o isCriticalToDeviceEncryption()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return p0
.end method

.method public whitelist isDigestsSpecified()Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return p0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return p0
.end method

.method public blacklist isRollbackResistant()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    return p0
.end method

.method public greylist-max-o isStrongBoxBacked()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return p0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return p0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return p0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return p0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return p0
.end method

.method public whitelist isUserPresenceRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return p0
.end method
