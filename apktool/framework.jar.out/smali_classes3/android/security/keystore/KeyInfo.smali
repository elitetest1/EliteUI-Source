.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInsideSecureHardware:Z

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mOrigin:I

.field private final greylist-max-o mPurposes:I

.field private final blacklist mRemainingUsageCount:I

.field private final blacklist mSecurityLevel:I

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mTrustedUserPresenceRequired:Z

.field private final blacklist mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final greylist-max-o mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    iput p3, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    iput p4, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    invoke-static {p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iput p8, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    iput-boolean p13, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    iput p14, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    iput p15, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    move/from16 p1, p22

    iput p1, p0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    move/from16 p1, p23

    iput p1, p0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeySize()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return p0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getOrigin()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return p0
.end method

.method public whitelist getPurposes()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return p0
.end method

.method public whitelist getRemainingUsageCount()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return p0
.end method

.method public whitelist getSecurityLevel()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    return p0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    return p0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 0

    iget p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return p0
.end method

.method public whitelist isInsideSecureHardware()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return p0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return p0
.end method

.method public whitelist isTrustedUserPresenceRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    return p0
.end method

.method public blacklist isUnlockedDeviceRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    return p0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return p0
.end method

.method public whitelist isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return p0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return p0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return p0
.end method
