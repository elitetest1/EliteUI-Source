.class public Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
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
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v37, "android.security.unlocked_storage_api"

    const-string v38, ""

    const-string v2, "android.security.aapm_api"

    const-string v3, "android.security.aapm_feature_disable_cellular_2g"

    const-string v4, "android.security.aapm_feature_disable_install_unknown_sources"

    const-string v5, "android.security.aapm_feature_memory_tagging_extension"

    const-string v6, "android.security.aapm_feature_usb_data_protection"

    const-string v7, "android.security.afl_api"

    const-string v8, "android.security.asm_opt_system_into_enforcement"

    const-string v9, "android.security.asm_reintroduce_grace_period"

    const-string v10, "android.security.asm_restrictions_enabled"

    const-string v11, "android.security.asm_toasts_enabled"

    const-string v12, "android.security.block_null_action_intents"

    const-string v13, "android.security.certificate_transparency_configuration"

    const-string v14, "android.security.clear_strong_auth_on_adding_primary_credential"

    const-string v15, "android.security.content_uri_permission_apis"

    const-string v16, "android.security.disable_adaptive_auth_counter_lock"

    const-string v17, "android.security.enable_intent_matching_flags"

    const-string v18, "android.security.enforce_intent_filter_match"

    const-string v19, "android.security.extend_ecm_to_all_settings"

    const-string v20, "android.security.frp_enforcement"

    const-string v21, "android.security.fsverity_api"

    const-string v22, "android.security.internal_log_event_listener"

    const-string v23, "android.security.keyinfo_unlocked_device_required"

    const-string v24, "android.security.keystore_grant_api"

    const-string v25, "android.security.mgf1_digest_setter_v2"

    const-string v26, "android.security.prevent_intent_redirect"

    const-string v27, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    const-string v28, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    const-string v29, "android.security.prevent_intent_redirect_show_toast"

    const-string v30, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    const-string v31, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    const-string v32, "android.security.protect_device_config_flags"

    const-string v33, "android.security.secure_array_zeroization"

    const-string v34, "android.security.secure_lockdown"

    const-string v35, "android.security.should_trust_manager_listen_for_primary_auth"

    const-string v36, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    filled-new-array/range {v2 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.security.aapm_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist aapmFeatureDisableCellular2g()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.security.aapm_feature_disable_cellular_2g"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist aapmFeatureDisableInstallUnknownSources()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.security.aapm_feature_disable_install_unknown_sources"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist aapmFeatureMemoryTaggingExtension()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.security.aapm_feature_memory_tagging_extension"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist aapmFeatureUsbDataProtection()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.security.aapm_feature_usb_data_protection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist aflApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.security.afl_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist asmOptSystemIntoEnforcement()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.security.asm_opt_system_into_enforcement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist asmReintroduceGracePeriod()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.security.asm_reintroduce_grace_period"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.security.asm_restrictions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist asmToastsEnabled()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.security.asm_toasts_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist blockNullActionIntents()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.security.block_null_action_intents"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.security.certificate_transparency_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist clearStrongAuthOnAddingPrimaryCredential()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.security.clear_strong_auth_on_adding_primary_credential"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist contentUriPermissionApis()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.security.content_uri_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist disableAdaptiveAuthCounterLock()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.security.disable_adaptive_auth_counter_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.security.enable_intent_matching_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.security.enforce_intent_filter_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist extendEcmToAllSettings()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.security.extend_ecm_to_all_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist frpEnforcement()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.security.frp_enforcement"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist fsverityApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.security.fsverity_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v35, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    const-string v36, "android.security.unlocked_storage_api"

    const-string v1, "android.security.aapm_api"

    const-string v2, "android.security.aapm_feature_disable_cellular_2g"

    const-string v3, "android.security.aapm_feature_disable_install_unknown_sources"

    const-string v4, "android.security.aapm_feature_memory_tagging_extension"

    const-string v5, "android.security.aapm_feature_usb_data_protection"

    const-string v6, "android.security.afl_api"

    const-string v7, "android.security.asm_opt_system_into_enforcement"

    const-string v8, "android.security.asm_reintroduce_grace_period"

    const-string v9, "android.security.asm_restrictions_enabled"

    const-string v10, "android.security.asm_toasts_enabled"

    const-string v11, "android.security.block_null_action_intents"

    const-string v12, "android.security.certificate_transparency_configuration"

    const-string v13, "android.security.clear_strong_auth_on_adding_primary_credential"

    const-string v14, "android.security.content_uri_permission_apis"

    const-string v15, "android.security.disable_adaptive_auth_counter_lock"

    const-string v16, "android.security.enable_intent_matching_flags"

    const-string v17, "android.security.enforce_intent_filter_match"

    const-string v18, "android.security.extend_ecm_to_all_settings"

    const-string v19, "android.security.frp_enforcement"

    const-string v20, "android.security.fsverity_api"

    const-string v21, "android.security.internal_log_event_listener"

    const-string v22, "android.security.keyinfo_unlocked_device_required"

    const-string v23, "android.security.keystore_grant_api"

    const-string v24, "android.security.mgf1_digest_setter_v2"

    const-string v25, "android.security.prevent_intent_redirect"

    const-string v26, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    const-string v27, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    const-string v28, "android.security.prevent_intent_redirect_show_toast"

    const-string v29, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    const-string v30, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    const-string v31, "android.security.protect_device_config_flags"

    const-string v32, "android.security.secure_array_zeroization"

    const-string v33, "android.security.secure_lockdown"

    const-string v34, "android.security.should_trust_manager_listen_for_primary_auth"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist internalLogEventListener()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.security.internal_log_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.security.keyinfo_unlocked_device_required"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist keystoreGrantApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.security.keystore_grant_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.security.mgf1_digest_setter_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirect()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirectAbortOrThrowException()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_abort_or_throw_exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_collect_nested_keys_on_server_if_not_collected"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirectShowToast()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_show_toast"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_show_toast_if_nested_keys_not_collected_r_w"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect_throw_exception_if_nested_keys_not_collected"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist protectDeviceConfigFlags()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.security.protect_device_config_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist secureArrayZeroization()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.security.secure_array_zeroization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist secureLockdown()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.security.secure_lockdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.security.should_trust_manager_listen_for_primary_auth"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.security.subscribe_to_keyguard_locked_state_perm_priv_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist unlockedStorageApi()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.security.unlocked_storage_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
