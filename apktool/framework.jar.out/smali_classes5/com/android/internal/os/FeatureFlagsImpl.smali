.class public final Lcom/android/internal/os/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/os/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist applicationSharedMemoryEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist debugStoreEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableApacheHttpLegacyPreload()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableMediaAndLocationPreload()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist ravenwoodFlagRo1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist ravenwoodFlagRo2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist ravenwoodFlagRw1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist ravenwoodFlagRw2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist useTransactionCodesForUnknownMethods()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
