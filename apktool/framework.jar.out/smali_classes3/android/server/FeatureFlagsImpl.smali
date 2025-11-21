.class public final Landroid/server/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/server/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist allowNetworkTimeUpdateService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowRemovingVpnService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist earlySystemConfigInit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableThemeService()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist migrateWristOrientation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist removeAppIntegrityManagerService()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist removeGameManagerServiceFromWear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist removeTextService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist removeWearableSensingServiceFromWear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telemetryApisService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist wearGestureApi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
