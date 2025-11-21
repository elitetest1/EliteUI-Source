.class public Lcom/samsung/android/globalactions/util/SystemConditionChecker;
.super Ljava/lang/Object;
.source "SystemConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemConditionChecker"


# instance fields
.field private final blacklist mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final blacklist mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    iput-object p3, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private blacklist isEnabled(Lcom/samsung/android/globalactions/util/SystemConditions;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker$1;->$SwitchMap$com$samsung$android$globalactions$util$SystemConditions:[I

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/util/SystemConditions;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isRepairMode()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ActivityManagerWrapper;->isInLockTaskMode()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isBikeMode()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->isDesktopModeDualView()Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->isDesktopModeStandalone()Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->isDOProvisioningMode()Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemPersonaWrapper;->isValidVersion()Z

    move-result p0

    return p0

    :pswitch_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LARGESCREEN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockNotRequired()Z

    move-result p0

    return p0

    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockOnlyLockscreenRequired()Z

    move-result p0

    return p0

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPowerOffUnlockAlwaysRequired()Z

    move-result p0

    return p0

    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemReserveBatteryWrapper;->isReserveBatteryMode()Z

    move-result p0

    return p0

    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isEmergencyModeUserAgreement()Z

    move-result p0

    return p0

    :pswitch_f
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isPasswordChangeEnforced()Z

    move-result p0

    return p0

    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p1, "POWER_OFF_LOCK"

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_11
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p1, "CAPTURED_BLUR"

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_12
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p1, "SF_EFFECT"

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_13
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isWifiOnlyDevice()Z

    move-result p0

    return p0

    :pswitch_14
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isMedicalInfoAccess()Z

    move-result p0

    return p0

    :pswitch_15
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->hasTelephonyRadio()Z

    move-result p0

    return p0

    :pswitch_16
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p1, "SAFETY_CARE"

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_17
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->isFOTAAvailableForGlobalActions()Z

    move-result p0

    return p0

    :pswitch_18
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result p0

    return p0

    :pswitch_19
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isUltraPowerSavingMode()Z

    move-result p0

    return p0

    :pswitch_1a
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->isWhiteTheme()Z

    move-result p0

    return p0

    :pswitch_1b
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;->isVoiceAssistantMode()Z

    move-result p0

    return p0

    :pswitch_1c
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isStrongAuthForLockDown()Z

    move-result p0

    return p0

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->isCurrentUserSecure()Z

    move-result p0

    return p0

    :pswitch_1e
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isDeviceOwner()Z

    move-result p0

    return p0

    :pswitch_1f
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isLockDownInPowerMenu()Z

    move-result p0

    return p0

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/UserManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/UserManagerWrapper;->isAllowedSafeBoot()Z

    move-result p0

    return p0

    :pswitch_21
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->hasAnySim()Z

    move-result p0

    return p0

    :pswitch_22
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->isSimLock()Z

    move-result p0

    return p0

    :pswitch_23
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/TSafeLockUtil;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/TSafeLockUtil;->isTSafeLock()Z

    move-result p0

    return p0

    :pswitch_24
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isTabletDevice()Z

    move-result p0

    return p0

    :pswitch_25
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->isDomesticOtaMode()Z

    move-result p0

    return p0

    :pswitch_26
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isLockNetworkAndSecurityOn()Z

    move-result p0

    return p0

    :pswitch_27
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isAirplaneMode()Z

    move-result p0

    return p0

    :pswitch_28
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isMissingPhoneLock()Z

    move-result p0

    return p0

    :pswitch_29
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isTaskBarEnabled()Z

    move-result p0

    return p0

    :pswitch_2a
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isNavBarGestureType()Z

    move-result p0

    return p0

    :pswitch_2b
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isBugReportMode()Z

    move-result p0

    return p0

    :pswitch_2c
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->isModifying()Z

    move-result p0

    return p0

    :pswitch_2d
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->isEmergencyMode()Z

    move-result p0

    return p0

    :pswitch_2e
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isMinimalBatteryUse()Z

    move-result p0

    return p0

    :pswitch_2f
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->canSetMode()Z

    move-result p0

    return p0

    :pswitch_30
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;->isSecFOTAPackageAvailable()Z

    move-result p0

    return p0

    :pswitch_31
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;->isATTFOTAPackageAvailable()Z

    move-result p0

    return p0

    :pswitch_32
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/PackageManagerWrapper;->isKidsHomeMode()Z

    move-result p0

    return p0

    :pswitch_33
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isUserUnLocked()Z

    move-result p0

    return p0

    :pswitch_34
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isKnoxguardLockEnabled()Z

    move-result p0

    return p0

    :pswitch_35
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isCarrierLockPlusEnabled()Z

    move-result p0

    return p0

    :pswitch_36
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->isFMMLocked()Z

    move-result p0

    return p0

    :pswitch_37
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->isSecureKeyguard()Z

    move-result p0

    return p0

    :pswitch_38
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->isLogoutEnabled()Z

    move-result p0

    return p0

    :pswitch_39
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->isEncryptionStatusActive()Z

    move-result p0

    return p0

    :pswitch_3a
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p1, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/TelephonyManagerWrapper;->isDataEnabled()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist isEnabled(Ljava/lang/Object;)Z
    .locals 10

    const-string v0, "["

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/globalactions/util/SystemConditions;->valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactions/util/SystemConditions;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->isEnabled(Lcom/samsung/android/globalactions/util/SystemConditions;)Z

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v8, "SystemConditionChecker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/util/SystemConditions;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long/2addr v5, v1

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
