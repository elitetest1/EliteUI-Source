.class public final Landroid/net/wifi/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/net/wifi/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getDeviceCrossAkmRoamingSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist hotspotNetworkConnectingStateForDetailsPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist hotspotNetworkUnknownStatusResetsConnectingState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist legacyKeystoreToWifiBlobstoreMigrationReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist networkProviderBatteryChargingStatus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist usd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
