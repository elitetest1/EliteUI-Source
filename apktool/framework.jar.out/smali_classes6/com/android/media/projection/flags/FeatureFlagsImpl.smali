.class public final Lcom/android/media/projection/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/media/projection/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appContentSharing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist mediaProjectionConnectedDisplay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist mediaProjectionConnectedDisplayNoVirtualDevice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist recordingOverlay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist showStopDialogPostCallEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist stopMediaProjectionOnCallEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
