.class public final Lcom/android/server/power/feature/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/power/feature/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist disableFrozenProcessWakelocks()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist enableEarlyScreenTimeoutDetector()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableScreenTimeoutPolicyListenerApi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist frameworkWakelockInfo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist improveWakelockLatency()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist moveWscLoggingToNotifier()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist perDisplayWakeByTouch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist policyReasonInDisplayPowerRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist wakelockAttributionViaWorkchain()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
