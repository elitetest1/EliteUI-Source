.class public final Landroid/database/sqlite/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/database/sqlite/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist concurrentOpenHelper()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist noCheckpointOnFinalize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist onewayFinalizerCloseFixed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist sqliteApis35()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
