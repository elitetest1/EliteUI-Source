.class public final Lcom/android/server/telecom/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/telecom/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addCallUriForMissedCalls()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowSystemAppsResolveVoipCalls()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist associatedUserRefactorForWorkProfile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist availableRoutesNeverUpdatedAfterSetSystemAudioState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist busDeviceIsASpeaker()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist businessCallComposer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist bypassHoldForEccDial()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cacheCallAudioCallbacks()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cacheCallEvents()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist callAudioCommunicationDeviceRefactor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist callAudioRoutingPerformanceImprovemenent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist callDetailsIdChanges()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist callSequencingCallResumeFailed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist cancelRemovalOnEmergencyRedial()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist checkCompletedFiltersOnTimeout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist checkDeviceTypeOnRouteChange()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist clearCommunicationDeviceAfterAudioOpsComplete()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist communicationDeviceProtectedByLock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist cswServiceInterfaceIsNull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist disconnectSelfManagedStuckStartupCalls()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist doNotSendCallToNullIcs()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist dontTimeoutDestroyedCalls()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist dontUseCommunicationDeviceTracker()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist earlyBindingToIncallService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist earlyUpdateInternalCallAudioState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist eccKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableCallAudioWatchdog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableCallExceptionAnomReports()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enableCallSequencing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist enableRespondViaSmsManagerAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist endSessionImprovements()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist enforceTransactionalExclusivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist ensureAudioModeUpdatesOnForegroundCallChange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist ensureInCarRinging()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixAudioFlickerForOutgoingCalls()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist fixUserRequestBaselineRouteVideoCall()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist genAnomReportOnFocusTimeout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getLastKnownCellIdentity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getRegisteredPhoneAccounts()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist getRingerModeAnomReport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist ignoreAutoRouteToWatchDevice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist isNewOutgoingCallBroadcastUnblocking()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist keepBluetoothDevicesCacheUpdated()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist maybeDefaultSpeakerAfterUnhold()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist newAudioPathSpeakerBroadcastAndUnfocusedRouting()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist onCallEndpointChangedIcsOnConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist onlyClearCommunicationDeviceOnInactive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist onlyUpdateTelephonyOnValidSubIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist postponeRegisterToLeaudio()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist preventRedundantLocationPermissionGrantAndRevoke()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist profileUserSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist remapTransactionalCapabilities()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist resetMuteWhenEnteringQuiescentBtRoute()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist resolveActiveBtRoutingAndBtTimingIssue()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist resolveSwitchingBtDevicesComputation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist selectPhoneAccountBeforeMakingRoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist separatelyBindToBtIncallService()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist setAudioModeBeforeAbandonFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist setMuteState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist setRemoteConnectionCallId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist skipBaselineSwitchWhenRouteNotBluetooth()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist skipFilterPhoneAccountPerformDndFilter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telecomAppLabelProxyHsumAware()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist telecomLogExternalWearableCalls()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telecomMainUserInBlockCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telecomMainUserInGetRespondMessageApp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telecomMainlineBlockedNumbersManager()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist telecomMetricsSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telecomResolveHiddenDependencies()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist telecomSkipLogBasedOnExtra()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist telephonyHasDefaultButTelecomDoesNot()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist transactionalCsVerifier()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist transactionalHoldDisconnectsUnholdable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist transactionalVideoState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist transitRouteBeforeAudioDisconnectBt()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist unregisterUnresolvableAccounts()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist updatePreferredAudioDeviceLogic()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist updateRouteMaskWhenBtConnected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist updatedRcsCallCountTracking()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useActualAddressToEnterConnectingState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useDeviceProvidedSerializedRingerVibration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useImprovedListenerOrder()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useRefactoredAudioRouteSwitching()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist useStreamVoiceCallTones()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist voipAppActionsSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist voipCallMonitorRefactor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
