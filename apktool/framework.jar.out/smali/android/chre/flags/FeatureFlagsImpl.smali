.class public final Landroid/chre/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/chre/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist abortIfNoContextHubFound()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist btSocketHalSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist bugFixHalReliableMessageRecord()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist bugFixRemoveExitCallInHal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist efwXportInContextHub()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist efwXportRewindOnError()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixApiCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist halHandleNanoappQueryTestMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist offloadApi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist offloadImplementation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reconnectHostEndpointsAfterHalRestart()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reduceLockingContextHubTransactionManager()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist refactorHalXportAgnostic()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reliableMessage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reliableMessageDuplicateDetectionService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reliableMessageRetrySupportService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist reliableMessageTestModeBehavior()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist removeOldContextHubApis()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
