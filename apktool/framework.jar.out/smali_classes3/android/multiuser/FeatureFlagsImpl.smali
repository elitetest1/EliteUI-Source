.class public final Landroid/multiuser/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/multiuser/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLauncherUserConfig()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist addUiForSoundsFromBackgroundUsers()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowMainUserToAccessBlockedNumberProvider()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowResolverSheetForPrivateSpace()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowSupervisingProfile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist avatarSync()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist blockPrivateSpaceCreation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheProfileIdsReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheProfileParentReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheProfileTypeReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cacheProfilesReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheQuietModeState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheUserInfoReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cacheUserPropertiesCorrectlyReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheUserRestrictionsReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cacheUserSerialNumber()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheUserSerialNumberReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheUserStartRealtimeReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cacheUserUnlockRealtimeReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cachesNotInvalidatedAtStartReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cachingDevelopmentImprovements()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist deletePrivateSpaceFromReset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist disablePrivateSpaceItemsOnHome()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableBiometricsToUnlockPrivateSpace()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableHidingProfiles()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableLauncherAppsHiddenProfileChecks()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableMovingContentIntoPrivateSpace()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist enablePermissionToAccessHiddenProfiles()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enablePrivateSpaceAutolockOnRestarts()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enablePrivateSpaceFeatures()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enablePrivateSpaceIntentRedirection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enablePsSensitiveNotificationsToggle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableSystemUserOnlyForServicesAndProviders()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAvatarConcurrentFileWrite()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAvatarContentProviderNullAuthority()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist fixAvatarCrossUserLeak()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAvatarPickerNotRespondingForNewUser()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAvatarPickerReadBackOrder()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAvatarPickerSelectedReadBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixDisablingOfMuToggleWhenRestrictionApplied()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixGetUserPropertyCache()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixLargeDisplayPrivateSpaceSettings()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getUserSwitchabilityPermission()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist handleInterleavedSettingsForPrivateSpace()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist ignoreRestrictionsWhenDeletingPrivateProfile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist invalidateCacheOnUsersChangedReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist logoutUserApi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist modifyPrivateSpaceSecondaryUnlockSetupFlow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist moveQuietModeOperationsToSeparateThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist multipleAlarmNotificationsSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist multiuserWidget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist newMultiuserSettingsUx()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist placeAddUserDialogWithinActivity()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist privateSpaceSearchIllustrationConfig()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist profilesForAll()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist propertyInvalidatedCacheBypassMismatchedUids()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist reorderWallpaperDuringUserSwitch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist requirePinBeforeUserDeletion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist scheduleStopOfBackgroundUser()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist setPowerModeDuringUserSwitch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist showCustomUnlockTitleInsidePrivateProfile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist showDifferentCreationErrorForUnsupportedDevices()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist showSetScreenLockDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist stopPreviousUserApps()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist supportAutolockForPrivateSpace()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist supportCommunalProfile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist supportCommunalProfileNextgen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist unicornModeRefactoringForHsumReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useAllCpusDuringUserSwitch()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist usePrivateSpaceIconInBiometricPrompt()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useUnifiedResources()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
