.class public final Landroid/app/usage/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/app/usage/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist disableIdleCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist filterBasedEventQueryApi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getAppArtManagedBytes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getAppBytesByDataTypeApi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reportUsageStatsPermission()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useDedicatedHandlerThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useParceledList()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist userInteractionTypeApi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
