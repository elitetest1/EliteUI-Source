.class public Lcom/android/server/power/feature/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/power/feature/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/power/feature/flags/FeatureFlags;",
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/power/feature/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v9, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    const-string v10, ""

    const-string v1, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    const-string v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const-string v3, "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

    const-string v4, "com.android.server.power.feature.flags.framework_wakelock_info"

    const-string v5, "com.android.server.power.feature.flags.improve_wakelock_latency"

    const-string v6, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    const-string v7, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    const-string v8, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist disableFrozenProcessWakelocks()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableEarlyScreenTimeoutDetector()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableScreenTimeoutPolicyListenerApi()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist frameworkWakelockInfo()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.framework_wakelock_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v7, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    const-string v8, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    const-string v0, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    const-string v1, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const-string v2, "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

    const-string v3, "com.android.server.power.feature.flags.framework_wakelock_info"

    const-string v4, "com.android.server.power.feature.flags.improve_wakelock_latency"

    const-string v5, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    const-string v6, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

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
            "Lcom/android/server/power/feature/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist improveWakelockLatency()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.improve_wakelock_latency"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist moveWscLoggingToNotifier()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perDisplayWakeByTouch()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist policyReasonInDisplayPowerRequest()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist wakelockAttributionViaWorkchain()Z
    .locals 2

    new-instance v0, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
