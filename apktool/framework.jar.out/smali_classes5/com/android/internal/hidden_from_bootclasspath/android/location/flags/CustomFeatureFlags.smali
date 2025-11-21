.class public Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;",
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
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v30, "android.location.flags.use_legacy_ntp_time"

    const-string v31, ""

    const-string v2, "android.location.flags.density_based_coarse_locations"

    const-string v3, "android.location.flags.deprecate_provider_request_apis"

    const-string v4, "android.location.flags.disable_stationary_throttling"

    const-string v5, "android.location.flags.enable_location_bypass"

    const-string v6, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    const-string v7, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    const-string v8, "android.location.flags.fix_is_in_emergency_anr"

    const-string v9, "android.location.flags.fix_service_watcher"

    const-string v10, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v11, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v12, "android.location.flags.gnss_api_navic_l1"

    const-string v13, "android.location.flags.gnss_assistance_interface"

    const-string v14, "android.location.flags.gnss_assistance_interface_jni"

    const-string v15, "android.location.flags.gnss_configuration_from_resource"

    const-string v16, "android.location.flags.gnss_location_provider_overlay_2025_devices"

    const-string v17, "android.location.flags.keep_gnss_stationary_throttling"

    const-string v18, "android.location.flags.limit_fused_gps"

    const-string v19, "android.location.flags.location_bypass"

    const-string v20, "android.location.flags.location_validation"

    const-string v21, "android.location.flags.missing_attribution_tags_in_overlay"

    const-string v22, "android.location.flags.new_geocoder"

    const-string v23, "android.location.flags.population_density_provider"

    const-string v24, "android.location.flags.release_supl_connection_on_timeout"

    const-string v25, "android.location.flags.replace_future_elapsed_realtime_jni"

    const-string v26, "android.location.flags.service_watcher_unstable_fallback"

    const-string v27, "android.location.flags.subscriptions_changed_listener_thread"

    const-string v28, "android.location.flags.update_is_in_emergency_before_on_register"

    const-string v29, "android.location.flags.update_min_location_request_interval"

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist densityBasedCoarseLocations()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.location.flags.density_based_coarse_locations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist deprecateProviderRequestApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.location.flags.deprecate_provider_request_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist disableStationaryThrottling()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.location.flags.disable_stationary_throttling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enableLocationBypass()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.location.flags.enable_location_bypass"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enableNiSuplMessageInjectionByCarrierConfig()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist fixIsInEmergencyAnr()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.location.flags.fix_is_in_emergency_anr"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist fixServiceWatcher()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.location.flags.fix_service_watcher"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist geoidHeightsViaAltitudeHal()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.location.flags.geoid_heights_via_altitude_hal"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v28, "android.location.flags.update_min_location_request_interval"

    const-string v29, "android.location.flags.use_legacy_ntp_time"

    const-string v1, "android.location.flags.density_based_coarse_locations"

    const-string v2, "android.location.flags.deprecate_provider_request_apis"

    const-string v3, "android.location.flags.disable_stationary_throttling"

    const-string v4, "android.location.flags.enable_location_bypass"

    const-string v5, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    const-string v6, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    const-string v7, "android.location.flags.fix_is_in_emergency_anr"

    const-string v8, "android.location.flags.fix_service_watcher"

    const-string v9, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v10, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v11, "android.location.flags.gnss_api_navic_l1"

    const-string v12, "android.location.flags.gnss_assistance_interface"

    const-string v13, "android.location.flags.gnss_assistance_interface_jni"

    const-string v14, "android.location.flags.gnss_configuration_from_resource"

    const-string v15, "android.location.flags.gnss_location_provider_overlay_2025_devices"

    const-string v16, "android.location.flags.keep_gnss_stationary_throttling"

    const-string v17, "android.location.flags.limit_fused_gps"

    const-string v18, "android.location.flags.location_bypass"

    const-string v19, "android.location.flags.location_validation"

    const-string v20, "android.location.flags.missing_attribution_tags_in_overlay"

    const-string v21, "android.location.flags.new_geocoder"

    const-string v22, "android.location.flags.population_density_provider"

    const-string v23, "android.location.flags.release_supl_connection_on_timeout"

    const-string v24, "android.location.flags.replace_future_elapsed_realtime_jni"

    const-string v25, "android.location.flags.service_watcher_unstable_fallback"

    const-string v26, "android.location.flags.subscriptions_changed_listener_thread"

    const-string v27, "android.location.flags.update_is_in_emergency_before_on_register"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssApiMeasurementRequestWorkSource()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.location.flags.gnss_api_measurement_request_work_source"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssApiNavicL1()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.location.flags.gnss_api_navic_l1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssAssistanceInterface()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.location.flags.gnss_assistance_interface"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssAssistanceInterfaceJni()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.location.flags.gnss_assistance_interface_jni"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssConfigurationFromResource()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.location.flags.gnss_configuration_from_resource"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist gnssLocationProviderOverlay2025Devices()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.location.flags.gnss_location_provider_overlay_2025_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist keepGnssStationaryThrottling()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.location.flags.keep_gnss_stationary_throttling"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist limitFusedGps()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.location.flags.limit_fused_gps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist locationBypass()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.location.flags.location_bypass"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist locationValidation()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.location.flags.location_validation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist missingAttributionTagsInOverlay()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.location.flags.missing_attribution_tags_in_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist newGeocoder()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.location.flags.new_geocoder"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist populationDensityProvider()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.location.flags.population_density_provider"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist releaseSuplConnectionOnTimeout()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.location.flags.release_supl_connection_on_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist replaceFutureElapsedRealtimeJni()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.location.flags.replace_future_elapsed_realtime_jni"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist serviceWatcherUnstableFallback()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.location.flags.service_watcher_unstable_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist subscriptionsChangedListenerThread()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.location.flags.subscriptions_changed_listener_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist updateIsInEmergencyBeforeOnRegister()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.location.flags.update_is_in_emergency_before_on_register"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist updateMinLocationRequestInterval()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.location.flags.update_min_location_request_interval"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist useLegacyNtpTime()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.location.flags.use_legacy_ntp_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
