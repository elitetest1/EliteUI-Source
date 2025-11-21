.class public Landroid/webkit/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/webkit/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/webkit/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/webkit/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.webkit.user_agent_reduction"

    const-string v8, ""

    const-string v1, "android.webkit.deprecate_start_safe_browsing"

    const-string v2, "android.webkit.file_system_access"

    const-string v3, "android.webkit.mainline_apis"

    const-string v4, "android.webkit.update_service_ipc_wrapper"

    const-string v5, "android.webkit.update_service_v2"

    const-string v6, "android.webkit.use_b_entry_point"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/webkit/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/webkit/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist deprecateStartSafeBrowsing()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.webkit.deprecate_start_safe_browsing"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fileSystemAccess()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.webkit.file_system_access"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v5, "android.webkit.use_b_entry_point"

    const-string v6, "android.webkit.user_agent_reduction"

    const-string v0, "android.webkit.deprecate_start_safe_browsing"

    const-string v1, "android.webkit.file_system_access"

    const-string v2, "android.webkit.mainline_apis"

    const-string v3, "android.webkit.update_service_ipc_wrapper"

    const-string v4, "android.webkit.update_service_v2"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/webkit/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/webkit/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist mainlineApis()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.webkit.mainline_apis"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist updateServiceIpcWrapper()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.webkit.update_service_ipc_wrapper"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist updateServiceV2()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.webkit.update_service_v2"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist useBEntryPoint()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.webkit.use_b_entry_point"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist userAgentReduction()Z
    .locals 2

    new-instance v0, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/webkit/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.webkit.user_agent_reduction"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
