.class public final Landroid/security/keystore2/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/security/keystore2/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist attestModules()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist disableLegacyKeystoreGet()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist disableLegacyKeystorePutV2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist importPreviouslyEmulatedKeys()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist useBlobStateColumn()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist walDbJournalmodeV3()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
