.class public Landroid/server/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/server/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/server/FeatureFlags;",
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
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/server/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v11, "android.server.wear_gesture_api"

    const-string v12, ""

    const-string v1, "android.server.allow_network_time_update_service"

    const-string v2, "android.server.allow_removing_vpn_service"

    const-string v3, "android.server.early_system_config_init"

    const-string v4, "android.server.enable_theme_service"

    const-string v5, "android.server.migrate_wrist_orientation"

    const-string v6, "android.server.remove_app_integrity_manager_service"

    const-string v7, "android.server.remove_game_manager_service_from_wear"

    const-string v8, "android.server.remove_text_service"

    const-string v9, "android.server.remove_wearable_sensing_service_from_wear"

    const-string v10, "android.server.telemetry_apis_service"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/server/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/server/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist allowNetworkTimeUpdateService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.server.allow_network_time_update_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist allowRemovingVpnService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.server.allow_removing_vpn_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist earlySystemConfigInit()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.server.early_system_config_init"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableThemeService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.server.enable_theme_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v9, "android.server.telemetry_apis_service"

    const-string v10, "android.server.wear_gesture_api"

    const-string v0, "android.server.allow_network_time_update_service"

    const-string v1, "android.server.allow_removing_vpn_service"

    const-string v2, "android.server.early_system_config_init"

    const-string v3, "android.server.enable_theme_service"

    const-string v4, "android.server.migrate_wrist_orientation"

    const-string v5, "android.server.remove_app_integrity_manager_service"

    const-string v6, "android.server.remove_game_manager_service_from_wear"

    const-string v7, "android.server.remove_text_service"

    const-string v8, "android.server.remove_wearable_sensing_service_from_wear"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

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
            "Landroid/server/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/server/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/server/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/server/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist migrateWristOrientation()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.server.migrate_wrist_orientation"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist removeAppIntegrityManagerService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.server.remove_app_integrity_manager_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist removeGameManagerServiceFromWear()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.server.remove_game_manager_service_from_wear"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist removeTextService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.server.remove_text_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist removeWearableSensingServiceFromWear()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.server.remove_wearable_sensing_service_from_wear"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist telemetryApisService()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.server.telemetry_apis_service"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist wearGestureApi()Z
    .locals 2

    new-instance v0, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/server/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.server.wear_gesture_api"

    invoke-virtual {p0, v1, v0}, Landroid/server/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
