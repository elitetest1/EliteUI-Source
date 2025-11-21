.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist addBannersToPrivacySensitiveAppsForAaos:Z = false

.field private static blacklist appPermissionFragmentUsesPreferences:Z = false

.field private static blacklist archivingReadOnly:Z = false

.field private static blacklist crossUserRoleEnabled:Z = false

.field private static blacklist crossUserRoleUxBugfixEnabled:Z = false

.field private static blacklist declutteredPermissionManagerEnabled:Z = false

.field private static blacklist defaultAppsRecommendationEnabled:Z = false

.field private static blacklist enableCoarseFineLocationPromptForAaos:Z = false

.field private static blacklist enhancedConfirmationBackportEnabled:Z = false

.field private static blacklist expressiveDesignEnabled:Z = false

.field private static blacklist fixSafetyCenterTouchTarget:Z = false

.field private static volatile blacklist isCached:Z = false

.field private static blacklist odadNotificationsSupported:Z = false

.field private static blacklist permissionTimelineAttributionLabelFix:Z = false

.field private static blacklist privateProfileSupported:Z = false

.field private static blacklist privateProfileTitleApi:Z = false

.field private static blacklist safetyCenterEnabledNoDeviceConfig:Z = false

.field private static blacklist safetyCenterIssueOnlyAffectsGroupStatus:Z = false

.field private static blacklist wearComposeMaterial3:Z = false

.field private static blacklist wearPrivacyDashboardEnabledReadOnly:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .locals 4

    const-string p0, "FeatureFlagsImplExport"

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.android.permission.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    const-string v2, "add_banners_to_privacy_sensitive_apps_for_aaos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    const-string v2, "app_permission_fragment_uses_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    const-string v2, "archiving_read_only"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    const-string v2, "cross_user_role_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    const-string v2, "cross_user_role_ux_bugfix_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    const-string v2, "decluttered_permission_manager_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    const-string v2, "default_apps_recommendation_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    const-string v2, "enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    const-string v2, "enhanced_confirmation_backport_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    const-string v2, "expressive_design_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    const-string v2, "fix_safety_center_touch_target"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    const-string v2, "odad_notifications_supported"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    const-string v2, "permission_timeline_attribution_label_fix"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    const-string/jumbo v2, "safety_center_enabled_no_device_config"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    const-string/jumbo v2, "safety_center_issue_only_affects_group_status"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    const-string/jumbo v2, "wear_compose_material3"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/LinkageError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    return p0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    return p0
.end method

.method public blacklist archivingReadOnly()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    return p0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    return p0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    return p0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    return p0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    return p0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    return p0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    return p0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    return p0
.end method

.method public blacklist fixSafetyCenterTouchTarget()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->fixSafetyCenterTouchTarget:Z

    return p0
.end method

.method public blacklist odadNotificationsSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    return p0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    return p0
.end method

.method public blacklist privateProfileSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    return p0
.end method

.method public blacklist privateProfileTitleApi()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    return p0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    return p0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    return p0
.end method

.method public blacklist wearComposeMaterial3()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    return p0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    :cond_0
    sget-boolean p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return p0
.end method
