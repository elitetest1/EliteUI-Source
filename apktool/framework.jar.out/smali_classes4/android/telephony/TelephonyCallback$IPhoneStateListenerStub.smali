.class Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "TelephonyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-iSO2-bofbIr8coIwUN5rlHeB68(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onUserMobileDataStateChanged$33(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0mjV2OEuDAZPmJClWHYaDz3F4Uw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeStopped$75(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6QaBuRUudDGl2Djksq9NbD9AsZY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onMessageWaitingIndicatorChanged$3(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7Wd-E7U3NQcB6LmWI22KaHnVqwY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnModeChanged$77(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9G0TNQ1qjOu9pKDaXqfHEec2NQg(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onOutgoingEmergencyCall$41(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BFTV4OJv21ap8DAIAyUT1DfBE0k(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onOutgoingEmergencySms$43(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BXCgkrZ76STkpFqUfVb0I7xYEek(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallStatesChanged$49(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BqB5K976UefGVXP-oKE_MEtugvg(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onEmergencyNumberListChanged$39(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DgLKm0T0mI-G3UQ0tfzvUy9ztQE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseCallStateChanged$21(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FIsGPEgvpS2osKQCfKnENukOI8o(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCpaiDataGatheringNotified$97(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HFZp1oQlhVEtJnPrLCAKneKsbZ8(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellLocationChanged$7(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HOJE4BX3x_utI9BSf4H5rDUOzX4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnEligibleStateChanged$79(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JDz6clJc1Nl8WD0tAjiWTAEZRdo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onMediaQualityStatusChanged$69(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KdCquEBfi0hJlXUHJNMAvOzzPmU(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCpaiDevAppMessageNotified$99(Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$L4DNMZFoGGRSS1EVNV1Wk_FIKac(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeRestarted$73(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MCk3FIc5EE0oMkyh_ynCvnb_290(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDisplayInfoChanged$35(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OGgn9f83ZzU_nAXKYMOk5wHxl6Y(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellularIdentifierDisclosedChanged$87(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OJMif-7meWkwpzkLx7f7tJ5niv0(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnAvailableServicesChanged$81(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OcLOx1SRPAe5wOLYcngwk4yTneY(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhoneCapabilityChanged$45(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RGSketXIP4iZFX3-OcJHJu91uEw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$11(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sy_1T7OR1uo2LGGS7bLkYmAgZNc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseDataConnectionStateChanged$25(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$USou5vEcj4EWQ0qlsUuf9M2s_Ns(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierNetworkChange$37(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W0STBotDwiSp5BOFRiVDqglimAo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSimultaneousCallingStateChanged$65(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLBEG5EA3EdC1VUf3gtKnDG-8m4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$17(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Xm97qoTRJVK-GQK2QzHpiY6pNRc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataActivationStateChanged$31(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZQTcKPL72wAaoTu74rp1hsgxDdI(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSemSatelliteSignalStrengthChanged$91(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_Cj3jhhaFnlsy_DDSw9HVH2SP8c(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onVoiceActivationStateChanged$29(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_vhu47kS9Qa4Tjl0s5rGoYik_xw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataEnabledChanged$61(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$a21lwFErB8c0gq68l8cMISmyQqo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellInfoChanged$19(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eRfaUxFDsfSZImJVe_NaMLLTihM(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataConnectionStateChanged$13(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fuzf3r54FO5fIqFeIEpPC10xWSA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSecurityAlgorithmsChanged$85(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g1_mtyvqpflztjA6vw5PsF4dVpM(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCpaiFeatureInfoNotified$95(Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gvPU7yaTOuHzu5kZg4P_xLFYPjE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onAllowedNetworkTypesChanged$63(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i9o_T85bS0Jz9RT7f_Hr4zHZ_is(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onActiveDataSubIdChanged$51(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ivydF_IXCOPfIqpfYTQKGRxXTPk(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallDisconnectCauseChanged$23(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jWvzp9DqXY-INdegrVTvfHq0cso(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallForwardingIndicatorChanged$5(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jYFV3rfCD-wvE5Jmmrw7NDPnWRo(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onRegistrationFailed$55(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kRmoLlxUdEqUTDqcnaqY7reBNIw(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSrvccStateChanged$27(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l9EJVzT0R6BL15SjGyVYp__TkBA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnSignalStrengthChanged$83(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lykKDOCeiEZ-UF5239H8Y-Wjrqc(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onImsCallDisconnectCauseChanged$53(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m_BBeWs1TmM3iDmj1-PROfgu3vM(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhysicalChannelConfigChanged$59(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$thpxAcrRmUg6q0CmL4AEQWZkZ7M(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallStateChanged$9(Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$trDUz5t1wN8bu9JkMmsQxd4T1T4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCpaiModelUpdateNotified$93(Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vU2E7ycVfi0HJ6fbhhiOFdDwl2U(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onRadioPowerStateChanged$47(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$w5LUkxRj7kFs-gpCAX4NAT6C0s4(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSemSatelliteServiceStateChanged$89(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wFuLqi-vuAobrLjGLBsMry1wg9U(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onServiceStateChanged$1(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wUpn60kylb84dpeRLREJTSpP7R8(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallbackModeStarted$71(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x-OWJ9gpiSJ1K-wvp2zZi-2h8OE(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDataActivity$15(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yrMl2yhbt09gKJ1M75twMhH6lwA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$57(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zItixx3sneUNeZ4KbT1UR2FoqHA(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onLinkCapacityEstimateChanged$67(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/TelephonyCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic blacklist lambda$onActiveDataSubIdChanged$50(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;->onActiveDataSubscriptionIdChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveDataSubIdChanged$51(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda83;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda83;-><init>(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAllowedNetworkTypesChanged$62(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;->onAllowedNetworkTypesChanged(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onAllowedNetworkTypesChanged$63(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda71;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda71;-><init>(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBarringInfoChanged$56(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$BarringInfoListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBarringInfoChanged$57(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda40;-><init>(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallDisconnectCauseChanged$22(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;->onCallDisconnectCauseChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallDisconnectCauseChanged$23(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda53;-><init>(Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingIndicatorChanged$4(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;->onCallForwardingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallForwardingIndicatorChanged$5(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStateChanged$8(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallStateListener;->onCallStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStateChanged$9(Landroid/telephony/TelephonyCallback$CallStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda65;-><init>(Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallStatesChanged$48(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallStatesChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallStatesChanged$49(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda87;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda87;-><init>(Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeRestarted$72(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeRestarted(ILjava/time/Duration;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeRestarted$73(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeStarted$70(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeStarted(ILjava/time/Duration;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeStarted$71(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallbackModeStopped$74(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;->onCallbackModeStopped(III)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallbackModeStopped$75(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda47;-><init>(Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierNetworkChange$36(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;->onCarrierNetworkChange(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierNetworkChange$37(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnAvailableServicesChanged$80(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnAvailableServicesChanged$81(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda69;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda69;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnEligibleStateChanged$78(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnEligibleStateChanged$79(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnModeChanged$76(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnModeChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnModeChanged$77(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda62;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierRoamingNtnSignalStrengthChanged$82(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCarrierRoamingNtnSignalStrengthChanged$83(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfoChanged$18(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellInfoListener;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellInfoChanged$19(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellLocationChanged$6(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellLocationListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellLocationChanged$7(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCellularIdentifierDisclosedChanged$86(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;->onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCellularIdentifierDisclosedChanged$87(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCpaiDataGatheringNotified$96(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;->onCpaiDataGatheringNotified(II[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onCpaiDataGatheringNotified$97(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;-><init>(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCpaiDevAppMessageNotified$98(Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;->onCpaiDevAppMessageNotified(III[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onCpaiDevAppMessageNotified$99(Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCpaiFeatureInfoNotified$94(Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;->onCpaiFeatureInfoNotified(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCpaiFeatureInfoNotified$95(Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda75;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda75;-><init>(Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCpaiModelUpdateNotified$92(Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;->onCpaiModelUpdateNotified(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onCpaiModelUpdateNotified$93(Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivationStateChanged$30(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivationStateListener;->onDataActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivationStateChanged$31(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda98;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda98;-><init>(Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataActivity$14(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DataActivityListener;->onDataActivity(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataActivity$15(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$10(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$11(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataConnectionStateChanged$12(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;->onDataConnectionStateChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataConnectionStateChanged$13(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDataEnabledChanged$60(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$DataEnabledListener;->onDataEnabledChanged(ZI)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataEnabledChanged$61(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayInfoChanged$34(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$DisplayInfoListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayInfoChanged$35(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda46;-><init>(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEmergencyNumberListChanged$38(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEmergencyNumberListChanged$39(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda59;-><init>(Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onImsCallDisconnectCauseChanged$52(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImsCallDisconnectCauseChanged$53(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda86;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda86;-><init>(Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkCapacityEstimateChanged$66(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLinkCapacityEstimateChanged$67(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda55;-><init>(Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMediaQualityStatusChanged$68(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method private synthetic blacklist lambda$onMediaQualityStatusChanged$69(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda93;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda93;-><init>(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMessageWaitingIndicatorChanged$2(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;->onMessageWaitingIndicatorChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageWaitingIndicatorChanged$3(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencyCall$40(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencyCall$41(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda79;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda79;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onOutgoingEmergencySms$42(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOutgoingEmergencySms$43(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;-><init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhoneCapabilityChanged$44(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhoneCapabilityChanged$45(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda85;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda85;-><init>(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPhysicalChannelConfigChanged$58(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPhysicalChannelConfigChanged$59(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseCallStateChanged$20(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseCallStateChanged$21(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda72;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda72;-><init>(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreciseDataConnectionStateChanged$24(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreciseDataConnectionStateChanged$25(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRadioPowerStateChanged$46(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;->onRadioPowerStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onRadioPowerStateChanged$47(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationFailed$54(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 0

    invoke-interface/range {p0 .. p5}, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistrationFailed$55(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSecurityAlgorithmsChanged$84(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;->onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSecurityAlgorithmsChanged$85(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSemSatelliteServiceStateChanged$88(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;->onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSemSatelliteServiceStateChanged$89(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSemSatelliteSignalStrengthChanged$90(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;->onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSemSatelliteSignalStrengthChanged$91(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;-><init>(Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceStateChanged$0(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$ServiceStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceStateChanged$1(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda90;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda90;-><init>(Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSignalStrengthsChanged$16(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSignalStrengthsChanged$17(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda60;-><init>(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSimultaneousCallingStateChanged$64(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;->onSimultaneousCellularCallingSubscriptionsChanged(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSimultaneousCallingStateChanged$65(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda41;-><init>(Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSrvccStateChanged$26(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$SrvccStateListener;->onSrvccStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSrvccStateChanged$27(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda77;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda77;-><init>(Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUserMobileDataStateChanged$32(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onUserMobileDataStateChanged$33(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda39;-><init>(Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onVoiceActivationStateChanged$28(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;->onVoiceActivationStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onVoiceActivationStateChanged$29(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda44;-><init>(Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveDataSubIdChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda37;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onAllowedNetworkTypesChanged(IJ)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda91;

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda91;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$BarringInfoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda96;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda96;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallDisconnectCauseChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallForwardingIndicatorChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda89;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda89;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallStatesChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallAttributesListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CallAttributesListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallbackModeRestarted(IJI)V
    .locals 7

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCallbackModeRestarted:type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda76;

    move-object v2, p0

    move v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda76;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallbackModeStarted(IJI)V
    .locals 7

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCallBackModeStarted:type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;

    move-object v2, p0

    move v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;ILjava/time/Duration;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCallbackModeStopped(III)V
    .locals 7

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->emergencyCallbackModeNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCallBackModeStopped:type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda92;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda92;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;III)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCarrierNetworkChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda84;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda84;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierNetworkListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCarrierRoamingNtnAvailableServicesChanged([I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;[I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCarrierRoamingNtnEligibleStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda88;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda88;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCarrierRoamingNtnModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda97;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda97;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRoamingNbIotNtn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellInfoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda73;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda73;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellInfoListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellLocationListener;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda70;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cellularIdentifierDisclosureIndications()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCpaiDataGatheringNotified(II[B)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCpaiDevAppMessageNotified(III[B)V
    .locals 8

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiDevAppMessageListener;III[B)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCpaiFeatureInfoNotified(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda78;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiFeatureInforListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onCpaiModelUpdateNotified(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda45;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$CpaiModelUpdateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDataActivationStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivationStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDataActivity(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataActivityListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataActivityListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onDataConnectionStateChanged(II)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    new-instance p1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0, v0, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda51;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataConnectionStateListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDataEnabledChanged(ZI)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DataEnabledListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DataEnabledListener;ZI)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda50;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onEmergencyNumberListChanged(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda57;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;Ljava/util/Map;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda58;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onLegacyCallStateChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onLinkCapacityEstimateChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda99;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda99;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda56;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onMessageWaitingIndicatorChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onOemHookRawEvent([B)V
    .locals 0

    return-void
.end method

.method public blacklist onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda48;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda67;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda94;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda94;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda54;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda68;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;Landroid/telephony/PreciseDataConnectionState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRadioPowerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda61;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RadioPowerStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 9

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda80;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda80;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$RegistrationFailedListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->securityAlgorithmsUpdateIndications()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSemSatelliteServiceStateChanged(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSemSatelliteSignalStrengthChanged(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SemSatelliteStateListener;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda66;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$ServiceStateListener;Landroid/telephony/ServiceState;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSignalStrengthChanged(I)V
    .locals 0

    return-void
.end method

.method public blacklist onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda49;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSimultaneousCallingStateChanged([I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;[I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onSrvccStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$SrvccStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda81;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda81;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$SrvccStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onUserMobileDataStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;Z)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onVoiceActivationStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
