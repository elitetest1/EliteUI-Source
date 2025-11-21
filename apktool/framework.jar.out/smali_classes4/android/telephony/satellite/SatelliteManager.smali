.class public final Landroid/telephony/satellite/SatelliteManager;
.super Ljava/lang/Object;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteManager$SatelliteException;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDisallowedReason;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteCommunicationRestrictionReason;,
        Landroid/telephony/satellite/SatelliteManager$DatagramType;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteModemState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDatagramTransferState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDataSupportMode;,
        Landroid/telephony/satellite/SatelliteManager$DisplayMode;,
        Landroid/telephony/satellite/SatelliteManager$DeviceHoldPosition;,
        Landroid/telephony/satellite/SatelliteManager$NTRadioTechnology;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteResult;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SATELLITE_START_NON_EMERGENCY_SESSION:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_START_NON_EMERGENCY_SESSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SATELLITE_SUBSCRIBER_ID_LIST_CHANGED:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_SUBSCRIBER_ID_LIST_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_CHECK_PENDING_INCOMING_SMS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_KEEP_ALIVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_LAST_SOS_MESSAGE_NO_HELP_NEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_LAST_SOS_MESSAGE_STILL_NEED_HELP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_LOCATION_SHARING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_SMS:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_SOS_MESSAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_LEFT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_RIGHT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_PORTRAIT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_CLOSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_FIXED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_OPENED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_SOS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_T911:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_DEMO_MODE_ENABLED:Ljava/lang/String; = "demo_mode_enabled"

.field public static final blacklist KEY_DEPROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "deprovision_satellite"

.field public static final blacklist KEY_EMERGENCY_MODE_ENABLED:Ljava/lang/String; = "emergency_mode_enabled"

.field public static final blacklist KEY_NTN_SIGNAL_STRENGTH:Ljava/lang/String; = "ntn_signal_strength"

.field public static final blacklist KEY_PROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "provision_satellite"

.field public static final blacklist KEY_REQUEST_PROVISION_SUBSCRIBER_ID_TOKEN:Ljava/lang/String; = "request_provision_subscriber_id"

.field public static final blacklist KEY_SATELLITE_ACCESS_CONFIGURATION:Ljava/lang/String; = "satellite_access_configuration"

.field public static final blacklist KEY_SATELLITE_CAPABILITIES:Ljava/lang/String; = "satellite_capabilities"

.field public static final blacklist KEY_SATELLITE_COMMUNICATION_ALLOWED:Ljava/lang/String; = "satellite_communication_allowed"

.field public static final blacklist KEY_SATELLITE_DISPLAY_NAME:Ljava/lang/String; = "satellite_display_name"

.field public static final blacklist KEY_SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist KEY_SATELLITE_NEXT_VISIBILITY:Ljava/lang/String; = "satellite_next_visibility"

.field public static final blacklist KEY_SATELLITE_PROVISIONED:Ljava/lang/String; = "satellite_provisioned"

.field public static final blacklist KEY_SATELLITE_SUPPORTED:Ljava/lang/String; = "satellite_supported"

.field public static final blacklist KEY_SELECTED_NB_IOT_SATELLITE_SUBSCRIPTION_ID:Ljava/lang/String; = "selected_nb_iot_satellite_subscription_id"

.field public static final blacklist KEY_SESSION_STATS:Ljava/lang/String; = "session_stats"

.field public static final blacklist KEY_SESSION_STATS_V2:Ljava/lang/String; = "session_stats_v2"

.field public static final blacklist METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"

.field public static final whitelist NT_RADIO_TECHNOLOGY_EMTC_NTN:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NB_IOT_NTN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NR_NTN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_PROPRIETARY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROPERTY_SATELLITE_DATA_OPTIMIZED:Ljava/lang/String; = "android.telephony.PROPERTY_SATELLITE_DATA_OPTIMIZED"

.field public static final blacklist PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.satellite.PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_ENTITLEMENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_GEOLOCATION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_COMMUNICATION_RESTRICTION_REASON_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_NONE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_SUCCESS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVING:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SENDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_SUCCESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_WAITING_TO_CONNECT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_CONSTRAINED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_RESTRICTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_UNCONSTRAINED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DISALLOWED_REASON_LOCATION_DISABLED:I = 0x4

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_IN_ALLOWED_REGION:I = 0x2

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_PROVISIONED:I = 0x1

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_SUPPORTED:I = 0x0

.field public static final blacklist SATELLITE_DISALLOWED_REASON_UNSUPPORTED_DEFAULT_MSG_APP:I = 0x3

.field public static final whitelist SATELLITE_MODEM_STATE_CONNECTED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_RETRYING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_TRANSFERRING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_MODEM_STATE_DISABLING_SATELLITE:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_MODEM_STATE_ENABLING_SATELLITE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_LISTENING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_NOT_CONNECTED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_OFF:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ACCESS_BARRED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_DISABLE_IN_PROGRESS:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_EMERGENCY_CALL_IN_PROGRESS:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_ENABLE_IN_PROGRESS:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ILLEGAL_STATE:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_ARGUMENTS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_MODEM_STATE:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_TELEPHONY_STATE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_LOCATION_DISABLED:I = 0x19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_LOCATION_NOT_AVAILABLE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_BUSY:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_TIMEOUT:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_ERROR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_TIMEOUT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_AUTHORIZED:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_REACHABLE:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_SUPPORTED:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NO_RESOURCES:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_NO_VALID_SATELLITE_SUBSCRIPTION:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_RADIO_NOT_AVAILABLE:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_ABORTED:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_FAILED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_IN_PROGRESS:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_NOT_SUPPORTED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVER_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_NOT_PROVISIONED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_PROVISION_IN_PROGRESS:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteManager"

.field private static final blacklist sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/NtnSignalStrengthCallback;",
            "Landroid/telephony/satellite/INtnSignalStrengthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCapabilitiesCallback;",
            "Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;",
            "Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDatagramCallback;",
            "Landroid/telephony/satellite/ISatelliteDatagramCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;",
            "Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteModemStateCallback;",
            "Landroid/telephony/satellite/ISatelliteModemStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteProvisionStateCallback;",
            "Landroid/telephony/satellite/ISatelliteProvisionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;",
            "Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/satellite/SatelliteManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    return-void
.end method

.method private static blacklist getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;
    .locals 1

    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$69(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$70(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$71(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$72(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$100(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$97(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$98(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$99(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$36(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$37(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$38(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$39(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$44(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$45(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$46(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$47(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$93(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$94(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$95(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$96(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$32(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$33(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$34(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$35(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$73(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$74(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$75(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$76(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$18(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$19(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$20(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$21(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$0(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$1(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$2(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$3(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsAttachEnabledForCarrier$68(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$52(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$53(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$54(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$55(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$10(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$11(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$8(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$9(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$12(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$13(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$4(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$5(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$6(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$7(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$40(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$41(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$42(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$43(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$14(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$15(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$16(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$17(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$77(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$78(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$79(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$80(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$56(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$57(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$58(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$59(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$89(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$90(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$91(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$92(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$85(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$86(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$87(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$88(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$64(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$65(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$66(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$67(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$81(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$82(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$83(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$84(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$60(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$61(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$62(Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$63(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$48(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$49(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$50(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$51(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$22(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$23(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$24(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$25(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$26(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$27(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$28(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$29(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$30(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$31(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$23;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$23;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string p0, "addAttachRestrictionForCarrier() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;

    invoke-direct {p0, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "addAttachRestrictionForCarrier() RemoteException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;

    invoke-direct {p0, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subscription ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deprovisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$35;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$35;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string p0, "deprovisionSatellite() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "deprovisionSatellite() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist deprovisionService(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$11;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$11;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string p0, "deprovisionService() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "deprovisionService() RemoteException ex="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object p0

    array-length p1, p0

    if-nez p1, :cond_0

    const-string/jumbo p0, "receivedArray is empty, create empty set"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getAttachRestrictionReasonsForCarrier() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subscription ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getNtnSmsSupported()Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISemTelephony;->getNtnSmsSupported()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getNtnSmsSupported() invalid semTelephony"

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNtnSmsSupported() RemoteException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return p0
.end method

.method public blacklist getSatelliteDataOptimizedApps()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataOptimizedApps()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSatelliteDataOptimizedApps() RemoteException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-object p0
.end method

.method public blacklist getSatelliteDataSupportMode(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataSupportMode(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSatelliteDataSupportMode() RemoteException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSatelliteDisallowedReasons()[I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDisallowedReasons()[I

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony service is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSatelliteDisallowedReasons() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public whitelist getSatellitePlmnsForCarrier(I)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSatellitePlmnsForCarrier() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subscription ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist pollPendingDatagrams(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$16;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string/jumbo p0, "pollPendingDatagrams() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pollPendingDatagrams() RemoteException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist provisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$34;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$34;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "provisionSatellite() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "provisionSatellite() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist provisionService(Ljava/lang/String;[BLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$10;

    invoke-direct {v2, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$10;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "provisionService() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;

    invoke-direct {p0, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "provisionService() RemoteException="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;

    invoke-direct {p0, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_1
    return-void
.end method

.method public whitelist registerForCapabilitiesChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$28;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$28;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForCapabilitiesChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public blacklist registerForCommunicationAccessStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$30;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$30;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V

    sget-object p1, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForCommunicationAccessStateChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public whitelist registerForIncomingDatagram(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$15;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForIncomingDatagram() RemoteException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public whitelist registerForModemStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$14;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForModemStateChanged() RemoteException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public whitelist registerForNtnSignalStrengthChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$27;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$27;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForNtnSignalStrengthChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist registerForProvisionStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$12;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForProvisionStateChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public blacklist registerForSatelliteDisallowedReasonsChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$25;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$25;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForSatelliteDisallowedReasonsChanged() RemoteException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist registerForSelectedNbIotSatelliteSubscriptionChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$22;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$22;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public blacklist registerForSupportedStateChanged(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$29;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$29;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registerForSupportedStateChanged() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/16 p0, 0x9

    return p0
.end method

.method public whitelist registerStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->addSatelliteStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony registry service is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$24;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$24;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string/jumbo p0, "removeAttachRestrictionForCarrier() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;

    invoke-direct {p0, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "removeAttachRestrictionForCarrier() RemoteException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;

    invoke-direct {p0, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subscription ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist requestAttachEnabledForCarrier(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist requestCapabilities(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteCapabilities;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$6;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestCapabilities() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestCapabilities() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestEnabled(Landroid/telephony/satellite/EnableRequestAttributes;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/EnableRequestAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SatelliteManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEnabled()Z

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isDemoMode()Z

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEmergencyMode()Z

    move-result p1

    invoke-interface {v1, p0, v3, p1, v2}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestEnabled() invalid telephony"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "requestEnabled() exception: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsAttachEnabledForCarrier(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteManager;->getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;

    invoke-direct {p1, p3, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsCommunicationAllowedForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$18;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget p0, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestIsCommunicationAllowedForCurrentLocation() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestIsCommunicationAllowedForCurrentLocation() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsDemoModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$3;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestIsDemoModeEnabled() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestIsDemoModeEnabled() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsEmergencyModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$4;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "requestIsEmergencyModeEnabled() RemoteException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist requestIsEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$2;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestIsEnabled() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestIsEnabled() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsProvisioned(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$13;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestIsProvisioned() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestIsProvisioned() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestIsSupported(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$5;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestIsSupported() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestIsSupported() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestNtnSignalStrength(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/NtnSignalStrength;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$26;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestNtnSignalStrength() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestNtnSignalStrength() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSatelliteAccessConfigurationForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteAccessConfiguration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$19;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestSatelliteAccessConfigurationForCurrentLocation() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestSatelliteAccessConfigurationForCurrentLocation() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSatelliteDisplayName(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/CharSequence;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$33;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$33;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestSatelliteDisplayName() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestSatelliteDisplayName() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSatelliteSubscriberProvisionStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$32;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$32;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestSatelliteSubscriberProvisionStatus() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestSatelliteSubscriberProvisionStatus() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSelectedNbIotSatelliteSubscriptionId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$21;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$21;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestSelectedNbIotSatelliteSubscriptionId() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestSelectedNbIotSatelliteSubscriptionId() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSessionStats(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$31;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$31;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget p0, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestSessionStats() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestSessionStats() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestTimeForNextSatelliteVisibility(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/time/Duration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$20;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    const-string/jumbo p0, "requestTimeForNextSatelliteVisibility() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestTimeForNextSatelliteVisibility() RemoteException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$17;

    invoke-direct {v1, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$17;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void

    :cond_0
    const-string/jumbo p0, "sendDatagram() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;

    invoke-direct {p0, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sendDatagram() RemoteException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;

    invoke-direct {p0, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist setDeviceAlignedWithSatellite(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->setDeviceAlignedWithSatellite(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setDeviceAlignedWithSatellite() RemoteException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setNtnSmsSupported(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->setNtnSmsSupported(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setNtnSmsSupported() RemoteException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist startTransmissionUpdates(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$7;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8;

    invoke-direct {v2, p0, p1, p3}, Landroid/telephony/satellite/SatelliteManager$8;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "startTransmissionUpdates() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startTransmissionUpdates() RemoteException: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;

    invoke-direct {p0, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist stopTransmissionUpdates(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$9;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$9;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "stopSatelliteTransmissionUpdates: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string/jumbo p0, "stopTransmissionUpdates() invalid telephony"

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stopTransmissionUpdates() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;

    invoke-direct {p0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist unregisterForCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForCapabilitiesChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForCapabilitiesChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregisterForCommunicationAccessStateChanged(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget p0, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForCommunicationAccessStateChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForCommunicationAccessStateChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist unregisterForIncomingDatagram(Landroid/telephony/satellite/SatelliteDatagramCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForIncomingDatagram: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForIncomingDatagram() RemoteException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist unregisterForModemStateChanged(Landroid/telephony/satellite/SatelliteModemStateCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForModemStateChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForModemStateChanged() RemoteException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/INtnSignalStrengthCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForNtnSignalStrengthChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForNtnSignalStrengthChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist unregisterForProvisionStateChanged(Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForProvisionStateChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForProvisionStateChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForSatelliteDisallowedReasonsChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForSatelliteDisallowedReasonsChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForSelectedNbIotSatelliteSubscriptionChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregisterForSupportedStateChanged(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/IBooleanConsumer;

    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V

    return-void

    :cond_0
    const-string/jumbo p0, "unregisterForSupportedStateChanged: No internal callback."

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "telephony service is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unregisterForSupportedStateChanged() RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist unregisterStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeSatelliteStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony registry service is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Telephony service is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
