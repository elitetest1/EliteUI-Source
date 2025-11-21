.class public Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
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
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v22, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    const-string v23, ""

    const-string v2, "android.companion.virtualdevice.flags.activity_control_api"

    const-string v3, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    const-string v4, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    const-string v5, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    const-string v6, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    const-string v7, "android.companion.virtualdevice.flags.device_aware_display_power"

    const-string v8, "android.companion.virtualdevice.flags.device_aware_settings_override"

    const-string v9, "android.companion.virtualdevice.flags.display_power_manager_apis"

    const-string v10, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    const-string v11, "android.companion.virtualdevice.flags.enforce_remote_device_opt_out_on_all_virtual_displays"

    const-string v12, "android.companion.virtualdevice.flags.external_virtual_cameras"

    const-string v13, "android.companion.virtualdevice.flags.high_resolution_scroll"

    const-string v14, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    const-string v15, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    const-string v16, "android.companion.virtualdevice.flags.status_bar_and_insets"

    const-string v17, "android.companion.virtualdevice.flags.vdm_settings"

    const-string v18, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    const-string v19, "android.companion.virtualdevice.flags.virtual_display_insets"

    const-string v20, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    const-string v21, "android.companion.virtualdevice.flags.virtual_rotary"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist activityControlApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.activity_control_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist cameraMultipleInputStreams()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist cameraTimestampFromSurface()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist correctVirtualDisplayPowerState()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist defaultDeviceCameraAccessPolicy()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist deviceAwareDisplayPower()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_display_power"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist deviceAwareSettingsOverride()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.device_aware_settings_override"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist displayPowerManagerApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.display_power_manager_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enableLimitedVdmRole()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enforceRemoteDeviceOptOutOnAllVirtualDisplays()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.enforce_remote_device_opt_out_on_all_virtual_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist externalVirtualCameras()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.external_virtual_cameras"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v20, "android.companion.virtualdevice.flags.virtual_rotary"

    const-string v21, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    const-string v1, "android.companion.virtualdevice.flags.activity_control_api"

    const-string v2, "android.companion.virtualdevice.flags.camera_multiple_input_streams"

    const-string v3, "android.companion.virtualdevice.flags.camera_timestamp_from_surface"

    const-string v4, "android.companion.virtualdevice.flags.correct_virtual_display_power_state"

    const-string v5, "android.companion.virtualdevice.flags.default_device_camera_access_policy"

    const-string v6, "android.companion.virtualdevice.flags.device_aware_display_power"

    const-string v7, "android.companion.virtualdevice.flags.device_aware_settings_override"

    const-string v8, "android.companion.virtualdevice.flags.display_power_manager_apis"

    const-string v9, "android.companion.virtualdevice.flags.enable_limited_vdm_role"

    const-string v10, "android.companion.virtualdevice.flags.enforce_remote_device_opt_out_on_all_virtual_displays"

    const-string v11, "android.companion.virtualdevice.flags.external_virtual_cameras"

    const-string v12, "android.companion.virtualdevice.flags.high_resolution_scroll"

    const-string v13, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    const-string v14, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    const-string v15, "android.companion.virtualdevice.flags.status_bar_and_insets"

    const-string v16, "android.companion.virtualdevice.flags.vdm_settings"

    const-string v17, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    const-string v18, "android.companion.virtualdevice.flags.virtual_display_insets"

    const-string v19, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist highResolutionScroll()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.high_resolution_scroll"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist migrateViewconfigurationConstantsToResources()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.migrate_viewconfiguration_constants_to_resources"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist notificationsForDeviceStreaming()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.notifications_for_device_streaming"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist statusBarAndInsets()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.status_bar_and_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist vdmSettings()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.vdm_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist viewconfigurationApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.viewconfiguration_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist virtualDisplayInsets()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_display_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist virtualDisplayRotationApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_display_rotation_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist virtualRotary()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_rotary"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist virtualSensorAdditionalInfo()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.companion.virtualdevice.flags.virtual_sensor_additional_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
