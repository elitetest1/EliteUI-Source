.class public Landroid/multiuser/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/multiuser/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/multiuser/FeatureFlags;",
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
    .locals 78
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/multiuser/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v76, "android.multiuser.use_unified_resources"

    const-string v77, ""

    const-string v2, "android.multiuser.add_launcher_user_config"

    const-string v3, "android.multiuser.add_ui_for_sounds_from_background_users"

    const-string v4, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v5, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v6, "android.multiuser.allow_supervising_profile"

    const-string v7, "android.multiuser.avatar_sync"

    const-string v8, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v9, "android.multiuser.block_private_space_creation"

    const-string v10, "android.multiuser.cache_profile_ids_read_only"

    const-string v11, "android.multiuser.cache_profile_parent_read_only"

    const-string v12, "android.multiuser.cache_profile_type_read_only"

    const-string v13, "android.multiuser.cache_profiles_read_only"

    const-string v14, "android.multiuser.cache_quiet_mode_state"

    const-string v15, "android.multiuser.cache_user_info_read_only"

    const-string v16, "android.multiuser.cache_user_properties_correctly_read_only"

    const-string v17, "android.multiuser.cache_user_restrictions_read_only"

    const-string v18, "android.multiuser.cache_user_serial_number"

    const-string v19, "android.multiuser.cache_user_serial_number_read_only"

    const-string v20, "android.multiuser.cache_user_start_realtime_read_only"

    const-string v21, "android.multiuser.cache_user_unlock_realtime_read_only"

    const-string v22, "android.multiuser.caches_not_invalidated_at_start_read_only"

    const-string v23, "android.multiuser.caching_development_improvements"

    const-string v24, "android.multiuser.delete_private_space_from_reset"

    const-string v25, "android.multiuser.disable_private_space_items_on_home"

    const-string v26, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v27, "android.multiuser.enable_hiding_profiles"

    const-string v28, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    const-string v29, "android.multiuser.enable_moving_content_into_private_space"

    const-string v30, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v31, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v32, "android.multiuser.enable_private_space_features"

    const-string v33, "android.multiuser.enable_private_space_intent_redirection"

    const-string v34, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v35, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v36, "android.multiuser.fix_avatar_concurrent_file_write"

    const-string v37, "android.multiuser.fix_avatar_content_provider_null_authority"

    const-string v38, "android.multiuser.fix_avatar_cross_user_leak"

    const-string v39, "android.multiuser.fix_avatar_picker_not_responding_for_new_user"

    const-string v40, "android.multiuser.fix_avatar_picker_read_back_order"

    const-string v41, "android.multiuser.fix_avatar_picker_selected_read_back"

    const-string v42, "android.multiuser.fix_disabling_of_mu_toggle_when_restriction_applied"

    const-string v43, "android.multiuser.fix_get_user_property_cache"

    const-string v44, "android.multiuser.fix_large_display_private_space_settings"

    const-string v45, "android.multiuser.get_user_switchability_permission"

    const-string v46, "android.multiuser.handle_interleaved_settings_for_private_space"

    const-string v47, "android.multiuser.ignore_restrictions_when_deleting_private_profile"

    const-string v48, "android.multiuser.invalidate_cache_on_users_changed_read_only"

    const-string v49, "android.multiuser.logout_user_api"

    const-string v50, "android.multiuser.modify_private_space_secondary_unlock_setup_flow"

    const-string v51, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v52, "android.multiuser.multiple_alarm_notifications_support"

    const-string v53, "android.multiuser.multiuser_widget"

    const-string v54, "android.multiuser.new_multiuser_settings_ux"

    const-string v55, "android.multiuser.place_add_user_dialog_within_activity"

    const-string v56, "android.multiuser.private_space_search_illustration_config"

    const-string v57, "android.multiuser.profiles_for_all"

    const-string v58, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    const-string v59, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v60, "android.multiuser.require_pin_before_user_deletion"

    const-string v61, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v62, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v63, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v64, "android.multiuser.schedule_stop_of_background_user"

    const-string v65, "android.multiuser.set_power_mode_during_user_switch"

    const-string v66, "android.multiuser.show_custom_unlock_title_inside_private_profile"

    const-string v67, "android.multiuser.show_different_creation_error_for_unsupported_devices"

    const-string v68, "android.multiuser.show_set_screen_lock_dialog"

    const-string v69, "android.multiuser.stop_previous_user_apps"

    const-string v70, "android.multiuser.support_autolock_for_private_space"

    const-string v71, "android.multiuser.support_communal_profile"

    const-string v72, "android.multiuser.support_communal_profile_nextgen"

    const-string v73, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    const-string v74, "android.multiuser.use_all_cpus_during_user_switch"

    const-string v75, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    filled-new-array/range {v2 .. v77}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist addLauncherUserConfig()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "android.multiuser.add_launcher_user_config"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist addUiForSoundsFromBackgroundUsers()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.multiuser.add_ui_for_sounds_from_background_users"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist allowMainUserToAccessBlockedNumberProvider()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist allowResolverSheetForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.multiuser.allow_resolver_sheet_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist allowSupervisingProfile()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "android.multiuser.allow_supervising_profile"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist avatarSync()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.multiuser.avatar_sync"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist blockPrivateSpaceCreation()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.multiuser.block_private_space_creation"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheProfileIdsReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.multiuser.cache_profile_ids_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheProfileParentReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "android.multiuser.cache_profile_parent_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheProfileTypeReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.multiuser.cache_profile_type_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheProfilesReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.multiuser.cache_profiles_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheQuietModeState()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "android.multiuser.cache_quiet_mode_state"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserInfoReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "android.multiuser.cache_user_info_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserPropertiesCorrectlyReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "android.multiuser.cache_user_properties_correctly_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserRestrictionsReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "android.multiuser.cache_user_restrictions_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserSerialNumber()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.multiuser.cache_user_serial_number"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserSerialNumberReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.multiuser.cache_user_serial_number_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserStartRealtimeReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.multiuser.cache_user_start_realtime_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cacheUserUnlockRealtimeReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "android.multiuser.cache_user_unlock_realtime_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cachesNotInvalidatedAtStartReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "android.multiuser.caches_not_invalidated_at_start_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cachingDevelopmentImprovements()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.multiuser.caching_development_improvements"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist deletePrivateSpaceFromReset()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.multiuser.delete_private_space_from_reset"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist disablePrivateSpaceItemsOnHome()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.multiuser.disable_private_space_items_on_home"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableBiometricsToUnlockPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.multiuser.enable_biometrics_to_unlock_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableHidingProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.multiuser.enable_hiding_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableLauncherAppsHiddenProfileChecks()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableMovingContentIntoPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "android.multiuser.enable_moving_content_into_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enablePermissionToAccessHiddenProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.multiuser.enable_permission_to_access_hidden_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enablePrivateSpaceAutolockOnRestarts()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_autolock_on_restarts"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enablePrivateSpaceFeatures()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_features"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enablePrivateSpaceIntentRedirection()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.multiuser.enable_private_space_intent_redirection"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enablePsSensitiveNotificationsToggle()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableSystemUserOnlyForServicesAndProviders()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.multiuser.enable_system_user_only_for_services_and_providers"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarConcurrentFileWrite()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_concurrent_file_write"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarContentProviderNullAuthority()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_content_provider_null_authority"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarCrossUserLeak()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_cross_user_leak"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarPickerNotRespondingForNewUser()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_picker_not_responding_for_new_user"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarPickerReadBackOrder()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_picker_read_back_order"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixAvatarPickerSelectedReadBack()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.multiuser.fix_avatar_picker_selected_read_back"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixDisablingOfMuToggleWhenRestrictionApplied()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "android.multiuser.fix_disabling_of_mu_toggle_when_restriction_applied"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixGetUserPropertyCache()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "android.multiuser.fix_get_user_property_cache"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist fixLargeDisplayPrivateSpaceSettings()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "android.multiuser.fix_large_display_private_space_settings"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 76
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v74, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    const-string v75, "android.multiuser.use_unified_resources"

    const-string v1, "android.multiuser.add_launcher_user_config"

    const-string v2, "android.multiuser.add_ui_for_sounds_from_background_users"

    const-string v3, "android.multiuser.allow_main_user_to_access_blocked_number_provider"

    const-string v4, "android.multiuser.allow_resolver_sheet_for_private_space"

    const-string v5, "android.multiuser.allow_supervising_profile"

    const-string v6, "android.multiuser.avatar_sync"

    const-string v7, "android.multiuser.bind_wallpaper_service_on_its_own_thread_during_a_user_switch"

    const-string v8, "android.multiuser.block_private_space_creation"

    const-string v9, "android.multiuser.cache_profile_ids_read_only"

    const-string v10, "android.multiuser.cache_profile_parent_read_only"

    const-string v11, "android.multiuser.cache_profile_type_read_only"

    const-string v12, "android.multiuser.cache_profiles_read_only"

    const-string v13, "android.multiuser.cache_quiet_mode_state"

    const-string v14, "android.multiuser.cache_user_info_read_only"

    const-string v15, "android.multiuser.cache_user_properties_correctly_read_only"

    const-string v16, "android.multiuser.cache_user_restrictions_read_only"

    const-string v17, "android.multiuser.cache_user_serial_number"

    const-string v18, "android.multiuser.cache_user_serial_number_read_only"

    const-string v19, "android.multiuser.cache_user_start_realtime_read_only"

    const-string v20, "android.multiuser.cache_user_unlock_realtime_read_only"

    const-string v21, "android.multiuser.caches_not_invalidated_at_start_read_only"

    const-string v22, "android.multiuser.caching_development_improvements"

    const-string v23, "android.multiuser.delete_private_space_from_reset"

    const-string v24, "android.multiuser.disable_private_space_items_on_home"

    const-string v25, "android.multiuser.enable_biometrics_to_unlock_private_space"

    const-string v26, "android.multiuser.enable_hiding_profiles"

    const-string v27, "android.multiuser.enable_launcher_apps_hidden_profile_checks"

    const-string v28, "android.multiuser.enable_moving_content_into_private_space"

    const-string v29, "android.multiuser.enable_permission_to_access_hidden_profiles"

    const-string v30, "android.multiuser.enable_private_space_autolock_on_restarts"

    const-string v31, "android.multiuser.enable_private_space_features"

    const-string v32, "android.multiuser.enable_private_space_intent_redirection"

    const-string v33, "android.multiuser.enable_ps_sensitive_notifications_toggle"

    const-string v34, "android.multiuser.enable_system_user_only_for_services_and_providers"

    const-string v35, "android.multiuser.fix_avatar_concurrent_file_write"

    const-string v36, "android.multiuser.fix_avatar_content_provider_null_authority"

    const-string v37, "android.multiuser.fix_avatar_cross_user_leak"

    const-string v38, "android.multiuser.fix_avatar_picker_not_responding_for_new_user"

    const-string v39, "android.multiuser.fix_avatar_picker_read_back_order"

    const-string v40, "android.multiuser.fix_avatar_picker_selected_read_back"

    const-string v41, "android.multiuser.fix_disabling_of_mu_toggle_when_restriction_applied"

    const-string v42, "android.multiuser.fix_get_user_property_cache"

    const-string v43, "android.multiuser.fix_large_display_private_space_settings"

    const-string v44, "android.multiuser.get_user_switchability_permission"

    const-string v45, "android.multiuser.handle_interleaved_settings_for_private_space"

    const-string v46, "android.multiuser.ignore_restrictions_when_deleting_private_profile"

    const-string v47, "android.multiuser.invalidate_cache_on_users_changed_read_only"

    const-string v48, "android.multiuser.logout_user_api"

    const-string v49, "android.multiuser.modify_private_space_secondary_unlock_setup_flow"

    const-string v50, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    const-string v51, "android.multiuser.multiple_alarm_notifications_support"

    const-string v52, "android.multiuser.multiuser_widget"

    const-string v53, "android.multiuser.new_multiuser_settings_ux"

    const-string v54, "android.multiuser.place_add_user_dialog_within_activity"

    const-string v55, "android.multiuser.private_space_search_illustration_config"

    const-string v56, "android.multiuser.profiles_for_all"

    const-string v57, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    const-string v58, "android.multiuser.reorder_wallpaper_during_user_switch"

    const-string v59, "android.multiuser.require_pin_before_user_deletion"

    const-string v60, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    const-string v61, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    const-string v62, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    const-string v63, "android.multiuser.schedule_stop_of_background_user"

    const-string v64, "android.multiuser.set_power_mode_during_user_switch"

    const-string v65, "android.multiuser.show_custom_unlock_title_inside_private_profile"

    const-string v66, "android.multiuser.show_different_creation_error_for_unsupported_devices"

    const-string v67, "android.multiuser.show_set_screen_lock_dialog"

    const-string v68, "android.multiuser.stop_previous_user_apps"

    const-string v69, "android.multiuser.support_autolock_for_private_space"

    const-string v70, "android.multiuser.support_communal_profile"

    const-string v71, "android.multiuser.support_communal_profile_nextgen"

    const-string v72, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    const-string v73, "android.multiuser.use_all_cpus_during_user_switch"

    filled-new-array/range {v1 .. v75}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserSwitchabilityPermission()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.multiuser.get_user_switchability_permission"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/multiuser/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/multiuser/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist handleInterleavedSettingsForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.multiuser.handle_interleaved_settings_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist ignoreRestrictionsWhenDeletingPrivateProfile()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "android.multiuser.ignore_restrictions_when_deleting_private_profile"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist invalidateCacheOnUsersChangedReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.multiuser.invalidate_cache_on_users_changed_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/multiuser/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/multiuser/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist logoutUserApi()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.multiuser.logout_user_api"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist modifyPrivateSpaceSecondaryUnlockSetupFlow()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.multiuser.modify_private_space_secondary_unlock_setup_flow"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist moveQuietModeOperationsToSeparateThread()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "android.multiuser.move_quiet_mode_operations_to_separate_thread"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist multipleAlarmNotificationsSupport()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.multiuser.multiple_alarm_notifications_support"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist multiuserWidget()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "android.multiuser.multiuser_widget"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist newMultiuserSettingsUx()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.multiuser.new_multiuser_settings_ux"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist placeAddUserDialogWithinActivity()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.multiuser.place_add_user_dialog_within_activity"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist privateSpaceSearchIllustrationConfig()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.multiuser.private_space_search_illustration_config"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist profilesForAll()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.multiuser.profiles_for_all"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist propertyInvalidatedCacheBypassMismatchedUids()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "android.multiuser.property_invalidated_cache_bypass_mismatched_uids"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist reorderWallpaperDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "android.multiuser.reorder_wallpaper_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist requirePinBeforeUserDeletion()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "android.multiuser.require_pin_before_user_deletion"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.multiuser.restrict_quiet_mode_credential_bug_fix_to_managed_profiles"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "android.multiuser.save_global_and_guest_restrictions_on_system_user_xml_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist scheduleStopOfBackgroundUser()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.multiuser.schedule_stop_of_background_user"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist setPowerModeDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.multiuser.set_power_mode_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist showCustomUnlockTitleInsidePrivateProfile()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "android.multiuser.show_custom_unlock_title_inside_private_profile"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist showDifferentCreationErrorForUnsupportedDevices()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.multiuser.show_different_creation_error_for_unsupported_devices"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist showSetScreenLockDialog()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.multiuser.show_set_screen_lock_dialog"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist stopPreviousUserApps()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.multiuser.stop_previous_user_apps"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist supportAutolockForPrivateSpace()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.multiuser.support_autolock_for_private_space"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist supportCommunalProfile()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist supportCommunalProfileNextgen()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "android.multiuser.support_communal_profile_nextgen"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist unicornModeRefactoringForHsumReadOnly()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.multiuser.unicorn_mode_refactoring_for_hsum_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist useAllCpusDuringUserSwitch()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.multiuser.use_all_cpus_during_user_switch"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist usePrivateSpaceIconInBiometricPrompt()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.multiuser.use_private_space_icon_in_biometric_prompt"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist useUnifiedResources()Z
    .locals 2

    new-instance v0, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Landroid/multiuser/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "android.multiuser.use_unified_resources"

    invoke-virtual {p0, v1, v0}, Landroid/multiuser/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
