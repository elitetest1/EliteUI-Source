.class public final Landroid/app/contextualsearch/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/app/contextualsearch/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist contextualSearchMediaProjection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist contextualSearchPreventSelfCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableTokenRefresh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist includeAudioPlayingStatus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist multiWindowScreenContext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist reportSecureSurfacesInAssistStructure()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist selfInvocation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
