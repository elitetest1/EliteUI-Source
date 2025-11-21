.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$BatteryStatsDumpHelper;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$ProcessStateChange;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$ModemActivityCounter;,
        Landroid/os/BatteryStats$ModemTxRxCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final blacklist BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field private static final blacklist BATTERY_HEALTH_UNDER_VOLTAGE:I = 0x9

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field public static final blacklist BLUETOOTH_DUTY_SCAN_ON:I = 0x18

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x24

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final blacklist DUMP_DEBUG_PERF_BASELINE:I = 0x80

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final blacklist MODEM_TX_POWER_LEVELS:I = 0x5

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final blacklist NUM_ALL_NETWORK_TYPES:I

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final blacklist NUM_HIGH_REFRESH_RATE_BINS:I = 0x4

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final blacklist NUM_PROTECT_BATTERY_MODE_TYPES:I

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final blacklist POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field private static final blacklist PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field public static final greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 61

    const-string v0, "c"

    const-string/jumbo v1, "u"

    const-string v2, "l"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "basic"

    const-string v2, "adaptive"

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "max"

    const-string/jumbo v5, "longTerm"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->PROTECT_BATTERY_MODE_TYPES:[Ljava/lang/String;

    array-length v1, v1

    sput v1, Landroid/os/BatteryStats;->NUM_PROTECT_BATTERY_MODE_TYPES:I

    const-string v1, "light"

    const-string v2, "bright"

    const-string v4, "dark"

    const-string v5, "dim"

    const-string/jumbo v6, "medium"

    filled-new-array {v4, v5, v6, v1, v2}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v13

    sput-object v13, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const-string v35, "emngcy"

    const-string/jumbo v36, "other"

    const-string/jumbo v14, "oos"

    const-string v15, "gprs"

    const-string v16, "edge"

    const-string/jumbo v17, "umts"

    const-string v18, "cdma"

    const-string v19, "evdo_0"

    const-string v20, "evdo_A"

    const-string v21, "1xrtt"

    const-string v22, "hsdpa"

    const-string v23, "hsupa"

    const-string v24, "hspa"

    const-string v25, "iden"

    const-string v26, "evdo_b"

    const-string/jumbo v27, "lte"

    const-string v28, "ehrpd"

    const-string v29, "hspap"

    const-string v30, "gsm"

    const-string/jumbo v31, "td_scdma"

    const-string v32, "iwlan"

    const-string/jumbo v33, "lte_ca"

    const-string/jumbo v34, "nr"

    filled-new-array/range {v14 .. v36}, [Ljava/lang/String;

    move-result-object v42

    sput-object v42, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid/os/BatteryStats;->getAllNetworkTypesCount()I

    move-result v7

    sput v7, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    add-int/lit8 v8, v7, 0x2

    sput v8, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    const/4 v14, 0x3

    add-int/2addr v7, v14

    sput v7, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-string v7, "LTE"

    const-string v8, "NR"

    const-string v9, "Other"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    const-string v26, "dormant"

    const-string/jumbo v27, "uninit"

    const-string v15, "invalid"

    const-string v16, "disconn"

    const-string v17, "disabled"

    const-string v18, "inactive"

    const-string/jumbo v19, "scanning"

    const-string v20, "authenticating"

    const-string v21, "associating"

    const-string v22, "associated"

    const-string v23, "4-way-handshake"

    const-string v24, "group-handshake"

    const-string v25, "completed"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v33

    sput-object v33, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string v26, "dorm"

    const-string/jumbo v27, "uninit"

    const-string v15, "inv"

    const-string v16, "dsc"

    const-string v17, "dis"

    const-string v18, "inact"

    const-string/jumbo v19, "scan"

    const-string v20, "auth"

    const-string v21, "ascing"

    const-string v22, "asced"

    const-string v23, "4-way"

    const-string v24, "group"

    const-string v25, "compl"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v34

    sput-object v34, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v7, 0x12

    new-array v15, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "running"

    const-string/jumbo v9, "r"

    const/high16 v10, -0x80000000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    aput-object v7, v15, v16

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wake_lock"

    const-string/jumbo v9, "w"

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    aput-object v7, v15, v17

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "sensor"

    const-string/jumbo v9, "s"

    const/high16 v10, 0x800000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x2

    aput-object v7, v15, v18

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string v8, "gps"

    const-string v9, "g"

    const/high16 v10, 0x20000000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v15, v14

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_full_lock"

    const-string v9, "Wl"

    const/high16 v10, 0x10000000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x4

    aput-object v7, v15, v19

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_scan"

    const-string v9, "Ws"

    const/high16 v10, 0x8000000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v15, v0

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_multicast"

    const-string v9, "Wm"

    const/high16 v10, 0x10000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x6

    aput-object v7, v15, v20

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_radio"

    const-string v9, "Wr"

    const/high16 v10, 0x4000000

    invoke-direct {v7, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x7

    aput-object v7, v15, v8

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "mobile_radio"

    const-string v10, "Pr"

    const/high16 v11, 0x2000000

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x8

    aput-object v7, v15, v21

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "phone_scanning"

    const-string v10, "Psc"

    const/high16 v11, 0x200000

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x9

    aput-object v7, v15, v22

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "audio"

    const-string v10, "a"

    const/high16 v11, 0x400000

    invoke-direct {v7, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa

    aput-object v7, v15, v9

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "screen"

    const-string v11, "S"

    move/from16 v23, v0

    const/high16 v0, 0x100000

    invoke-direct {v7, v0, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-object v7, v15, v0

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "plugged"

    const-string v11, "BP"

    move/from16 v24, v0

    const/high16 v0, 0x80000

    invoke-direct {v7, v0, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    aput-object v7, v15, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "screen_doze"

    const-string v10, "Sd"

    const/high16 v11, 0x40000

    invoke-direct {v0, v11, v7, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0xd

    aput-object v0, v15, v25

    new-instance v37, Landroid/os/BatteryStats$BitDescription;

    const-string v40, "data_conn"

    const-string v41, "Pcn"

    const/16 v38, 0x3e00

    const/16 v39, 0x9

    move-object/from16 v43, v42

    invoke-direct/range {v37 .. v43}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0xe

    aput-object v37, v15, v0

    new-instance v26, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "out"

    const-string v10, "emergency"

    const-string v11, "in"

    filled-new-array {v11, v7, v10, v3}, [Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v7, "out"

    const-string v10, "em"

    const-string v11, "in"

    filled-new-array {v11, v7, v10, v3}, [Ljava/lang/String;

    move-result-object v32

    const/16 v27, 0x1c0

    const/16 v28, 0x6

    const-string/jumbo v29, "phone_state"

    const-string v30, "Pst"

    invoke-direct/range {v26 .. v32}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v27, 0xf

    aput-object v26, v15, v27

    new-instance v35, Landroid/os/BatteryStats$BitDescription;

    const-string v7, "good"

    const-string v10, "great"

    const-string/jumbo v11, "none"

    move/from16 v26, v0

    const-string/jumbo v0, "poor"

    const-string/jumbo v8, "moderate"

    filled-new-array {v11, v0, v8, v7, v10}, [Ljava/lang/String;

    move-result-object v40

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v41

    const/16 v36, 0x38

    const/16 v37, 0x3

    const-string/jumbo v38, "phone_signal_strength"

    const-string v39, "Pss"

    invoke-direct/range {v35 .. v41}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x10

    aput-object v35, v15, v0

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "brightness"

    const-string v11, "Sb"

    const/4 v8, 0x7

    move/from16 v29, v9

    const/4 v9, 0x0

    move/from16 v35, v0

    move/from16 v36, v14

    move/from16 v14, v29

    const/4 v0, 0x7

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0x11

    aput-object v7, v15, v8

    sput-object v15, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v7, 0x11

    new-array v7, v7, [Landroid/os/BatteryStats$BitDescription;

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "power_save"

    const-string/jumbo v10, "ps"

    const/high16 v11, -0x80000000

    invoke-direct {v8, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v16

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "video"

    const-string/jumbo v10, "v"

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v8, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v17

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "wifi_running"

    const-string v10, "Ww"

    const/high16 v11, 0x20000000

    invoke-direct {v8, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v18

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "wifi"

    const-string v10, "W"

    const/high16 v11, 0x10000000

    invoke-direct {v8, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v36

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "flashlight"

    const-string v10, "fl"

    const/high16 v11, 0x8000000

    invoke-direct {v8, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v19

    new-instance v37, Landroid/os/BatteryStats$BitDescription;

    const-string v8, "full"

    const-string v9, "???"

    const-string v10, "light"

    filled-new-array {v3, v10, v8, v9}, [Ljava/lang/String;

    move-result-object v42

    const-string v8, "full"

    const-string v9, "???"

    const-string v10, "light"

    filled-new-array {v3, v10, v8, v9}, [Ljava/lang/String;

    move-result-object v43

    const/high16 v38, 0x6000000

    const/16 v39, 0x19

    const-string v40, "device_idle"

    const-string v41, "di"

    invoke-direct/range {v37 .. v43}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v37, v7, v23

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v8, "charging"

    const-string v9, "ch"

    const/high16 v10, 0x1000000

    invoke-direct {v3, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v20

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "usb_data"

    const-string v9, "Ud"

    const/high16 v10, 0x40000

    invoke-direct {v3, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v0

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "phone_in_call"

    const-string v9, "Pcl"

    const/high16 v10, 0x800000

    invoke-direct {v3, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v21

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v8, "bluetooth"

    const-string v9, "b"

    const/high16 v10, 0x400000

    invoke-direct {v3, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v22

    new-instance v37, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v42

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v43

    const/16 v38, 0x70

    const/16 v39, 0x4

    const-string/jumbo v40, "wifi_signal_strength"

    const-string v41, "Wss"

    invoke-direct/range {v37 .. v43}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v37, v7, v14

    new-instance v28, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v31, "wifi_suppl"

    const-string v32, "Wsp"

    const/16 v29, 0xf

    const/16 v30, 0x0

    invoke-direct/range {v28 .. v34}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v28, v7, v24

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "camera"

    const-string v8, "ca"

    const/high16 v9, 0x200000

    invoke-direct {v3, v9, v6, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v7, v6

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "ble_scan"

    const-string v8, "bles"

    const/high16 v9, 0x100000

    invoke-direct {v3, v9, v6, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v25

    new-instance v3, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "cellular_high_tx_power"

    const-string v8, "Chtp"

    const/high16 v9, 0x80000

    invoke-direct {v3, v9, v6, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v7, v26

    new-instance v28, Landroid/os/BatteryStats$BitDescription;

    const-string v3, "good"

    const-string/jumbo v6, "none"

    const-string/jumbo v8, "poor"

    filled-new-array {v8, v3, v6}, [Ljava/lang/String;

    move-result-object v33

    const-string v3, "good"

    const-string/jumbo v6, "none"

    const-string/jumbo v8, "poor"

    filled-new-array {v8, v3, v6}, [Ljava/lang/String;

    move-result-object v34

    const/16 v29, 0x180

    const/16 v30, 0x7

    const-string v31, "gps_signal_quality"

    const-string v32, "Gss"

    invoke-direct/range {v28 .. v34}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v28, v7, v27

    new-instance v37, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "not_restricted"

    const-string v6, "connected"

    const-string/jumbo v8, "none"

    const-string/jumbo v9, "restricted"

    filled-new-array {v8, v9, v3, v6}, [Ljava/lang/String;

    move-result-object v42

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v43

    const/16 v38, 0x600

    const/16 v39, 0x9

    const-string/jumbo v40, "nr_state"

    const-string/jumbo v41, "nrs"

    invoke-direct/range {v37 .. v43}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v37, v7, v35

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v59, "state"

    const-string v60, "display_state_changed"

    const-string/jumbo v38, "null"

    const-string/jumbo v39, "proc"

    const-string v40, "fg"

    const-string/jumbo v41, "top"

    const-string/jumbo v42, "sync"

    const-string/jumbo v43, "wake_lock_in"

    const-string v44, "job"

    const-string/jumbo v45, "user"

    const-string/jumbo v46, "userfg"

    const-string v47, "conn"

    const-string v48, "active"

    const-string/jumbo v49, "pkginst"

    const-string/jumbo v50, "pkgunin"

    const-string v51, "alarm"

    const-string/jumbo v52, "stats"

    const-string/jumbo v53, "pkginactive"

    const-string/jumbo v54, "pkgactive"

    const-string/jumbo v55, "tmpwhitelist"

    const-string/jumbo v56, "screenwake"

    const-string/jumbo v57, "wakeupap"

    const-string/jumbo v58, "longwake"

    filled-new-array/range {v38 .. v60}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v58, "Esc"

    const-string v59, "Eds"

    const-string v37, "Enl"

    const-string v38, "Epr"

    const-string v39, "Efg"

    const-string v40, "Etp"

    const-string v41, "Esy"

    const-string v42, "Ewl"

    const-string v43, "Ejb"

    const-string v44, "Eur"

    const-string v45, "Euf"

    const-string v46, "Ecn"

    const-string v47, "Eac"

    const-string v48, "Epi"

    const-string v49, "Epu"

    const-string v50, "Eal"

    const-string v51, "Est"

    const-string v52, "Eai"

    const-string v53, "Eaa"

    const-string v54, "Etw"

    const-string v55, "Esw"

    const-string v56, "Ewa"

    const-string v57, "Elw"

    filled-new-array/range {v37 .. v59}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0x17

    new-array v3, v3, [Landroid/os/BatteryStats$IntToString;

    aput-object v1, v3, v16

    aput-object v1, v3, v17

    aput-object v1, v3, v18

    aput-object v1, v3, v36

    aput-object v1, v3, v19

    aput-object v1, v3, v23

    aput-object v1, v3, v20

    aput-object v1, v3, v0

    aput-object v1, v3, v21

    aput-object v1, v3, v22

    aput-object v1, v3, v14

    aput-object v2, v3, v24

    const/16 v4, 0xc

    aput-object v1, v3, v4

    aput-object v1, v3, v25

    aput-object v1, v3, v26

    aput-object v1, v3, v27

    aput-object v1, v3, v35

    const/16 v4, 0x11

    aput-object v1, v3, v4

    const/16 v4, 0x12

    aput-object v1, v3, v4

    const/16 v4, 0x13

    aput-object v1, v3, v4

    const/16 v4, 0x14

    aput-object v1, v3, v4

    const/16 v4, 0x15

    aput-object v2, v3, v4

    const/16 v2, 0x16

    aput-object v1, v3, v2

    sput-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string/jumbo v10, "sta_p2p"

    const-string/jumbo v11, "soft_ap"

    const-string/jumbo v4, "off"

    const-string/jumbo v5, "scanning"

    const-string/jumbo v6, "no_net"

    const-string v7, "disconn"

    const-string/jumbo v8, "sta"

    const-string/jumbo v9, "p2p"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    new-array v1, v14, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    new-array v1, v14, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v10, "screen doze-suspend power save"

    const-string/jumbo v11, "screen doze-suspend device idle"

    const-string/jumbo v2, "screen off"

    const-string/jumbo v3, "screen off power save"

    const-string/jumbo v4, "screen off device idle"

    const-string/jumbo v5, "screen on"

    const-string/jumbo v6, "screen on power save"

    const-string/jumbo v7, "screen doze"

    const-string/jumbo v8, "screen doze power save"

    const-string/jumbo v9, "screen doze-suspend"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v1, v16

    const-string v2, "cpu"

    aput-object v2, v1, v17

    const-string v2, "blue"

    aput-object v2, v1, v18

    const-string v2, "camera"

    aput-object v2, v1, v36

    const-string v2, "audio"

    aput-object v2, v1, v19

    const-string/jumbo v2, "video"

    aput-object v2, v1, v23

    const-string v2, "flashlight"

    aput-object v2, v1, v20

    const-string v2, "cell"

    aput-object v2, v1, v21

    const-string/jumbo v2, "sensors"

    aput-object v2, v1, v22

    const-string v2, "gnss"

    aput-object v2, v1, v14

    const-string/jumbo v2, "wifi"

    aput-object v2, v1, v24

    const-string/jumbo v2, "memory"

    aput-object v2, v1, v25

    const-string/jumbo v2, "phone"

    aput-object v2, v1, v26

    const-string v2, "ambi"

    aput-object v2, v1, v27

    const-string v2, "idle"

    aput-object v2, v1, v35

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    array-length v1, p0

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, p0, v5

    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method private blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "i"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move v6, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    if-nez v8, :cond_0

    new-instance v8, Landroid/util/Pair;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/util/MutableBoolean;

    invoke-direct {v10, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    if-eqz v9, :cond_2

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/MutableBoolean;

    iget-boolean v10, v10, Landroid/util/MutableBoolean;->value:Z

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/MutableBoolean;

    iput-boolean v3, v10, Landroid/util/MutableBoolean;->value:Z

    move v10, v4

    :goto_2
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uid"

    check-cast v11, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_7

    const-string v0, "dsd"

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v5

    const-string v6, ""

    invoke-static {p2, v6, v0, v5, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-ltz v5, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v5, "dtr"

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v5, "csd"

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v7

    invoke-static {p2, v6, v5, v7, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v9

    invoke-virtual {p0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v5

    cmp-long v7, v5, v11

    if-ltz v7, :cond_5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v5, "ctr"

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_3
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    :cond_7
    return-void
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 2

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    long-to-double p2, p2

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object v0, p2, p4

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 8

    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    const-wide v6, 0x10300000003L

    invoke-virtual {p0, v6, v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    const-wide v4, 0x10100000005L

    invoke-virtual {p0, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v1, p3, v0

    const-wide v4, 0x20b00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    invoke-virtual {p0, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    const-string v14, " steps)"

    const-string v15, " (from "

    const/4 v6, 0x0

    if-ltz v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v6

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    move v3, v6

    :goto_0
    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget v4, v4, v3

    int-to-long v7, v4

    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v4, v4, v3

    int-to-long v9, v4

    move-object/from16 v11, p6

    move v4, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v6 .. v11}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v7

    cmp-long v5, v7, v12

    if-lez v5, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v4

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Package changes:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Update "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " vers="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Uninstall "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000002L

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3

    and-long v13, v9, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x3

    const/4 v3, 0x2

    move-wide/from16 v17, v11

    const/4 v11, 0x1

    if-nez v13, :cond_5

    and-long v12, v7, v17

    long-to-int v12, v12

    add-int/2addr v12, v11

    if-eq v12, v11, :cond_3

    if-eq v12, v3, :cond_2

    if-eq v12, v14, :cond_1

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    const/4 v13, 0x5

    goto :goto_1

    :cond_1
    move v12, v4

    move v13, v14

    goto :goto_2

    :cond_2
    move v12, v4

    move v13, v11

    goto :goto_2

    :cond_3
    move v13, v3

    :cond_4
    :goto_1
    move v12, v4

    goto :goto_2

    :cond_5
    move v12, v4

    const/4 v13, 0x0

    :goto_2
    const-wide v3, 0x10e00000003L

    invoke-virtual {v0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v3, 0x4

    and-long v18, v9, v3

    cmp-long v13, v18, v15

    if-nez v13, :cond_7

    and-long/2addr v3, v7

    cmp-long v3, v3, v15

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v11, 0x2

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    const-wide v3, 0x10e00000004L

    invoke-virtual {v0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v3, 0x8

    and-long/2addr v9, v3

    cmp-long v9, v9, v15

    if-nez v9, :cond_8

    and-long/2addr v3, v7

    cmp-long v3, v3, v15

    if-eqz v3, :cond_9

    const/4 v14, 0x2

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :cond_9
    :goto_4
    const-wide v3, 0x10e00000005L

    invoke-virtual {v0, v3, v4, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v12, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_1

    return v3

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_19

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v17, 0x8

    move/from16 v16, v3

    const-wide/16 v19, 0x4

    const-wide/16 v21, 0x3

    const/4 v15, 0x2

    const-wide/16 v24, 0x0

    if-eqz p4, :cond_c

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v16

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    and-long v8, v13, v21

    cmp-long v8, v8, v24

    const-string v9, ""

    if-nez v8, :cond_7

    move/from16 v26, v4

    and-long v3, v11, v21

    long-to-int v3, v3

    add-int/2addr v3, v7

    if-eq v3, v7, :cond_6

    if-eq v3, v15, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const-string v3, "?"

    aput-object v3, v5, v15

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v15

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v15

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v15

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v15

    goto :goto_1

    :cond_7
    move/from16 v26, v4

    aput-object v9, v5, v15

    :goto_1
    and-long v3, v13, v19

    cmp-long v3, v3, v24

    if-nez v3, :cond_9

    and-long v3, v11, v19

    cmp-long v3, v3, v24

    if-eqz v3, :cond_8

    const-string/jumbo v3, "p+"

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "p-"

    :goto_2
    const/16 v27, 0x3

    aput-object v3, v5, v27

    goto :goto_3

    :cond_9
    const/16 v27, 0x3

    aput-object v9, v5, v27

    :goto_3
    and-long v3, v13, v17

    cmp-long v3, v3, v24

    if-nez v3, :cond_b

    and-long v3, v11, v17

    cmp-long v3, v3, v24

    if-eqz v3, :cond_a

    const-string v3, "i+"

    goto :goto_4

    :cond_a
    const-string v3, "i-"

    :goto_4
    const/16 v23, 0x4

    aput-object v3, v5, v23

    goto :goto_5

    :cond_b
    const/16 v23, 0x4

    aput-object v9, v5, v23

    :goto_5
    const-string v3, "i"

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    move/from16 v7, v16

    invoke-static {v0, v7, v3, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_c
    move/from16 v26, v4

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    and-long v3, v13, v21

    cmp-long v3, v3, v24

    const-string v4, " ("

    if-nez v3, :cond_11

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v8, v11, v21

    long-to-int v3, v8

    add-int/2addr v3, v7

    if-eq v3, v7, :cond_10

    if-eq v3, v15, :cond_f

    const/4 v8, 0x3

    if-eq v3, v8, :cond_e

    const/4 v8, 0x4

    if-eq v3, v8, :cond_d

    const-string/jumbo v3, "screen-?"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string/jumbo v3, "screen-doze-suspend"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string/jumbo v3, "screen-doze"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string/jumbo v3, "screen-on"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string/jumbo v3, "screen-off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    move v3, v7

    goto :goto_7

    :cond_11
    move/from16 v3, v16

    :goto_7
    and-long v8, v13, v19

    cmp-long v8, v8, v24

    const-string v9, ", "

    if-nez v8, :cond_14

    if-eqz v3, :cond_12

    move-object v3, v9

    goto :goto_8

    :cond_12
    move-object v3, v4

    :goto_8
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v19, v11, v19

    cmp-long v3, v19, v24

    if-eqz v3, :cond_13

    const-string/jumbo v3, "power-save-on"

    goto :goto_9

    :cond_13
    const-string/jumbo v3, "power-save-off"

    :goto_9
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v3, v7

    :cond_14
    and-long v13, v13, v17

    cmp-long v8, v13, v24

    if-nez v8, :cond_17

    if-eqz v3, :cond_15

    move-object v4, v9

    :cond_15
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v3, v11, v17

    cmp-long v3, v3, v24

    if-eqz v3, :cond_16

    const-string v3, "device-idle-on"

    goto :goto_a

    :cond_16
    const-string v3, "device-idle-off"

    :goto_a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_17
    move v7, v3

    :goto_b
    if-eqz v7, :cond_18

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move/from16 v4, v26

    goto/16 :goto_0

    :cond_19
    return v7
.end method

.method private blacklist dumpHistory(Ljava/io/PrintWriter;IJZ)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    move/from16 v7, p5

    const-string v2, " [Format: "

    new-instance v4, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v4, v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    monitor-enter p0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v8

    int-to-long v10, v8

    const-string v8, "Battery History"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v8

    if-eq v8, v9, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v10

    div-long/2addr v12, v5

    invoke-virtual {v3, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, "% used, "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v3, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " used of "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v3, v5, v6}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " strings using "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v2

    int-to-long v5, v2

    invoke-direct {v1, v3, v5, v6}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "):"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {v1, v3, v7}, Landroid/os/BatteryStats;->dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const-wide/16 v10, 0x0

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v10, v11, v5, v6}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v12

    move-object/from16 v17, v4

    move-wide v15, v5

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v4, :cond_13

    move-wide/from16 v18, v10

    :try_start_2
    iget-wide v9, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    cmp-long v11, v5, v18

    if-gez v11, :cond_2

    move-wide v5, v9

    :cond_2
    :try_start_3
    iget-wide v13, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    cmp-long v13, v13, p3

    if-ltz v13, :cond_12

    cmp-long v13, p3, v18

    if-ltz v13, :cond_10

    if-nez v2, :cond_10

    :try_start_4
    iget-byte v13, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v14, 0x5

    if-eq v13, v14, :cond_6

    :try_start_5
    iget-byte v13, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v15, 0x7

    if-eq v13, v15, :cond_6

    iget-byte v13, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v15, 0x4

    if-eq v13, v15, :cond_6

    iget-byte v13, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v15, 0x8

    if-ne v13, v15, :cond_3

    goto :goto_4

    :cond_3
    move-object v13, v12

    :try_start_6
    iget-wide v11, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v11, v11, v18

    if-eqz v11, :cond_5

    iget-byte v11, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v14, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v2, v0, 0x20

    move-object v12, v8

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v2, v17

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-object/from16 v17, v2

    iput-byte v11, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v2, v17

    goto :goto_6

    :cond_5
    move-object v12, v8

    move v11, v2

    move-object/from16 v2, v17

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v13, v12

    :goto_3
    move-object/from16 v3, p1

    move-wide v15, v9

    goto/16 :goto_14

    :cond_6
    :goto_4
    move-object v13, v12

    move-object v12, v8

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v3, p1

    move/from16 v7, p5

    move-object/from16 v2, v17

    :try_start_7
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v3, 0x0

    iput-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_6
    const/4 v11, 0x1

    :goto_7
    if-eqz v12, :cond_f

    iget-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_9

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_8

    const/4 v8, 0x1

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v3, p1

    move/from16 v7, p5

    :try_start_8
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v14, 0x0

    iput-byte v14, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    :try_start_9
    iget v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v7, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    new-instance v8, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v8}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v8, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move v8, v14

    :goto_a
    const/16 v14, 0x17

    if-ge v8, v14, :cond_e

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v14

    if-nez v14, :cond_b

    :cond_a
    move-object/from16 v17, v2

    move v0, v3

    move-wide/from16 v21, v9

    const/4 v3, 0x0

    move-object v9, v7

    move v10, v8

    goto/16 :goto_e

    :cond_b
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/util/SparseIntArray;

    move-object/from16 v17, v2

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    iput v8, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v2, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v2, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v15, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v2, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v15, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    and-int/lit8 v2, p2, 0x20

    move/from16 v20, v0

    move/from16 v0, v21

    move-wide/from16 v21, v9

    move v10, v8

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    goto :goto_d

    :cond_c
    const/4 v8, 0x0

    :goto_d
    move-object/from16 v3, p1

    move-object/from16 v2, v17

    move-object v9, v7

    move/from16 v7, p5

    :try_start_a
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-object/from16 v17, v2

    const/4 v3, 0x0

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v2, v20, 0x1

    move v3, v0

    move v0, v2

    move-object v7, v9

    move v8, v10

    move-wide/from16 v9, v21

    goto :goto_c

    :cond_d
    move-wide/from16 v21, v9

    move/from16 v0, p2

    move-object/from16 v2, v17

    goto :goto_b

    :goto_e
    add-int/lit8 v8, v10, 0x1

    move v3, v0

    move-object v7, v9

    move-object/from16 v2, v17

    move-wide/from16 v9, v21

    move/from16 v0, p2

    goto/16 :goto_a

    :cond_e
    move-object/from16 v17, v2

    move v0, v3

    move-wide/from16 v21, v9

    const/4 v3, 0x0

    move-object v9, v7

    iput v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v9, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v12, v3

    goto :goto_10

    :catchall_2
    move-exception v0

    goto :goto_f

    :cond_f
    move-object/from16 v17, v2

    move-wide/from16 v21, v9

    const/4 v3, 0x0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-wide/from16 v21, v9

    goto :goto_f

    :catchall_4
    move-exception v0

    move-wide/from16 v21, v9

    move-object v13, v12

    :goto_f
    move-object/from16 v3, p1

    goto :goto_13

    :cond_10
    move-wide/from16 v21, v9

    move-object v13, v12

    const/4 v3, 0x0

    move-object v12, v8

    move v11, v2

    :goto_10
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_11

    const/4 v8, 0x1

    goto :goto_11

    :cond_11
    const/4 v8, 0x0

    :goto_11
    move/from16 v7, p5

    move-object v15, v3

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    :try_start_b
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v17, v2

    move v2, v11

    move-object v8, v12

    goto :goto_12

    :catchall_5
    move-exception v0

    goto :goto_13

    :cond_12
    move-wide/from16 v21, v9

    move-object v13, v12

    const/4 v15, 0x0

    move-object v12, v8

    :goto_12
    move/from16 v0, p2

    move/from16 v7, p5

    move-object v12, v13

    move-wide/from16 v10, v18

    move-wide/from16 v15, v21

    const/4 v9, 0x1

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    move-wide/from16 v21, v9

    move-object v13, v12

    :goto_13
    move-wide/from16 v15, v21

    goto :goto_14

    :catchall_7
    move-exception v0

    move-object v13, v12

    :goto_14
    :try_start_c
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v2, "BatteryStats"

    const-string v4, "Corrupted battery history"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_15

    :catchall_8
    move-exception v0

    goto :goto_17

    :cond_13
    move-wide/from16 v18, v10

    move-object v13, v12

    :goto_15
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    :cond_14
    cmp-long v0, p3, v18

    if-ltz v0, :cond_16

    invoke-virtual {v1}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_15

    const-string v0, "NEXT: "

    goto :goto_16

    :cond_15
    const-string v0, "  NEXT: "

    :goto_16
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_16
    return-void

    :catchall_9
    move-exception v0

    move-object v13, v12

    :goto_17
    move-object v1, v0

    if-eqz v13, :cond_17

    :try_start_d
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto :goto_18

    :catchall_a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_18
    throw v1

    :catchall_b
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    throw v0
.end method

.method private blacklist dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V
    .locals 4

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    if-ge p2, v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string v1, "hsp"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ",\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p5, :cond_4

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v6, v10

    move v11, v6

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v12

    if-eqz v12, :cond_2

    move v13, v10

    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v11, :cond_0

    const-string v11, "Per-PID Stats:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v11, v9

    :cond_0
    const-wide/16 v15, 0x0

    iget-wide v7, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-wide/from16 v17, v15

    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v15, :cond_1

    iget-wide v14, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v14, v4, v14

    goto :goto_2

    :cond_1
    move-wide/from16 v14, v17

    :goto_2
    add-long/2addr v7, v14

    const-string v14, "  PID "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, " wake time: "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v17, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v17, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    :cond_4
    const-wide/16 v17, 0x0

    :cond_5
    :goto_3
    if-eqz p5, :cond_6

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_b

    :cond_6
    const-string v2, "Discharge step durations:"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    const-string v7, "  "

    invoke-static {v1, v7, v2, v3, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    const-wide/16 v11, 0x3e8

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v11

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    cmp-long v4, v2, v17

    if-ltz v4, :cond_7

    const-string v4, "  Estimated discharge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long/2addr v2, v11

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v19

    move v8, v10

    :goto_4
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v2

    if-ge v8, v3, :cond_8

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v8

    aget v2, v2, v8

    int-to-long v4, v2

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v2, v2, v8

    int-to-long v13, v2

    const/16 v24, 0x0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v13

    invoke-virtual/range {v19 .. v24}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    const-string v2, "  Estimated "

    const-string v4, " time: "

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v2, "Charge step durations:"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v1, v7, v2, v3, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v11

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    cmp-long v4, v2, v17

    if-ltz v4, :cond_a

    const-string v4, "  Estimated charge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long/2addr v2, v11

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    if-eqz p5, :cond_c

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_19

    :cond_c
    const-string v2, "Daily stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Current start time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v2

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v7, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Next min deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v2

    invoke-static {v7, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Next max deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v2

    invoke-static {v7, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-array v6, v9, [I

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v11

    iget v2, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v12, "    "

    if-gtz v2, :cond_d

    iget v2, v8, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_d

    if-eqz v11, :cond_12

    :cond_d
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_f

    if-nez p5, :cond_e

    goto :goto_5

    :cond_e
    const-string v2, "  Current daily steps:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    "

    const-string v3, "Discharge"

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v2, "    "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_7

    :cond_f
    :goto_5
    const-string v0, "  Current daily discharge step durations:"

    invoke-static {v1, v12, v0, v4, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v2, "      "

    const-string v3, "Discharge"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_10
    const-string v0, "  Current daily charge step durations:"

    invoke-static {v1, v12, v0, v8, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v2, "      "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    :goto_6
    invoke-direct {v0, v1, v12, v11}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_12
    :goto_7
    move v2, v10

    :goto_8
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v8

    if-eqz v8, :cond_18

    add-int/lit8 v11, v2, 0x1

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_13
    const-string v3, "  Daily from "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v8, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v8, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v2, :cond_15

    if-nez p5, :cond_14

    goto :goto_9

    :cond_14
    const-string v3, "Discharge"

    iget-object v4, v8, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v3, "Charge"

    iget-object v4, v8, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_b

    :cond_15
    :goto_9
    const-string v0, "    Discharge step durations:"

    iget-object v2, v8, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v13, "      "

    invoke-static {v1, v13, v0, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v3, "Discharge"

    iget-object v4, v8, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_16
    const-string v0, "    Charge step durations:"

    iget-object v2, v8, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v1, v13, v0, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v3, "Charge"

    iget-object v4, v8, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    :goto_a
    iget-object v2, v8, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v12, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_b
    move v2, v11

    goto/16 :goto_8

    :cond_18
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_19
    if-eqz p5, :cond_1a

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string v2, "Feature status:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Can read \'charging remaining time\': "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->canReadTimeToFullNow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Can trust power_profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->canTrustSecPowerProfile()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_1b
    if-eqz p5, :cond_1c

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1e

    :cond_1c
    const-string v2, "Statistics since last charge:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  System starts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currently on battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_1d

    move v6, v9

    goto :goto_c

    :cond_1d
    move v6, v10

    :goto_c
    const-string v3, ""

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_1e
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->printLatestBackupData(Ljava/io/PrintWriter;)V

    :cond_1f
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long/2addr v4, v8

    move-object/from16 v10, p0

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v11

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v6, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer;

    move/from16 p2, v3

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {v15, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p2

    goto :goto_1

    :cond_2
    move/from16 p2, v3

    invoke-virtual {v10}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_25

    move-object/from16 p3, v15

    const-wide v14, 0x20b00000005L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    move/from16 v17, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    move-object/from16 v18, v6

    const-wide v6, 0x10500000001L

    invoke-virtual {v0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v22, v1

    move/from16 v23, v2

    move/from16 v1, v21

    move/from16 v21, v3

    :goto_3
    const-wide/16 v24, 0x0

    if-ltz v1, :cond_7

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v2, v30

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-nez v30, :cond_4

    move-wide/from16 v33, v4

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    move-object v15, v6

    move-object v9, v7

    move v6, v1

    goto/16 :goto_6

    :cond_4
    move-wide/from16 v33, v4

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v4, 0x10900000001L

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_6

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v12, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v15

    move-wide/from16 v37, v11

    invoke-static/range {v15 .. v16}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v10

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v12

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v4

    cmp-long v5, v10, v24

    if-nez v5, :cond_5

    if-nez v12, :cond_5

    if-nez v4, :cond_5

    move/from16 v41, v2

    move-object v15, v6

    move-wide/from16 v39, v8

    move v6, v1

    move-object v9, v7

    goto :goto_5

    :cond_5
    move-object v15, v6

    move-wide/from16 v39, v8

    const-wide v5, 0x20b00000002L

    move-object v9, v7

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v1

    move/from16 v41, v2

    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10300000002L

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000004L

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_5
    add-int/lit8 v2, v41, -0x1

    move-object/from16 v10, p0

    move v1, v6

    move-object v7, v9

    move-object v6, v15

    move-wide/from16 v11, v37

    move-wide/from16 v8, v39

    goto :goto_4

    :cond_6
    move-object v15, v6

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move v6, v1

    move-object v9, v7

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v1, v6, -0x1

    move-object/from16 v10, p0

    move-object v7, v9

    move-object v6, v15

    move-object/from16 v13, v30

    move-wide/from16 v4, v33

    move-wide/from16 v14, v35

    move-wide/from16 v11, v37

    move-wide/from16 v8, v39

    goto/16 :goto_3

    :cond_7
    move-wide/from16 v33, v4

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    move-object v15, v6

    move-object v9, v7

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v10, 0x10900000001L

    invoke-virtual {v0, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    :cond_8
    const-wide v4, 0x20b00000002L

    const-wide v10, 0x10900000001L

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-wide v7, 0x10300000001L

    if-eqz v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide/from16 v12, v39

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    goto :goto_8

    :cond_9
    move-wide/from16 v14, v24

    :goto_8
    const-wide v4, 0x10b00000018L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_9

    :cond_a
    move-wide/from16 v12, v39

    const-wide v1, 0x10300000002L

    :goto_9
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v28, v1

    const-wide v1, 0x10b00000008L

    move-object/from16 v10, v18

    move/from16 v11, v23

    move-wide/from16 v14, v28

    move-wide/from16 v4, v33

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v14, 0x10500000005L

    if-eqz v3, :cond_d

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v31, v1

    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move-wide/from16 v7, v31

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000002L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v16

    move/from16 v1, v16

    goto :goto_a

    :cond_b
    const/4 v6, 0x0

    move v1, v6

    :goto_a
    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    const-wide v2, 0x10500000006L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_c

    :cond_d
    const-wide v2, 0x10500000006L

    :goto_c
    move-wide/from16 v47, v2

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000009L

    move-wide/from16 v7, v47

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v7

    const-wide v14, 0x10300000001L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v7

    const-wide v14, 0x10300000002L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v14

    if-eqz v14, :cond_f

    array-length v15, v14

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    if-ne v15, v3, :cond_f

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v3

    if-nez v3, :cond_e

    array-length v3, v14

    new-array v3, v3, [J

    :cond_e
    const/4 v6, 0x0

    :goto_d
    array-length v15, v14

    if-ge v6, v15, :cond_f

    const-wide v7, 0x20b00000003L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    add-int/lit8 v15, v6, 0x1

    move-object/from16 p2, v3

    move-wide/from16 v39, v4

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v3, v14, v6

    move/from16 v18, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v3, p2, v18

    const-wide v5, 0x10300000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v3, p2

    move v6, v15

    move-wide/from16 v4, v39

    goto :goto_d

    :cond_f
    move-wide/from16 v39, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_e
    const-wide v7, 0x10e00000001L

    const/4 v14, 0x7

    if-ge v6, v14, :cond_13

    invoke-virtual {v10, v4, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v14

    if-nez v14, :cond_10

    const-wide/16 v14, 0x0

    invoke-static {v5, v14, v15}, Ljava/util/Arrays;->fill([JJ)V

    :cond_10
    const-wide v14, 0x20b00000004L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v3, :cond_11

    move/from16 p2, v3

    move-object/from16 v23, v4

    move/from16 v18, v7

    const-wide v7, 0x20b00000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    add-int/lit8 v7, v18, 0x1

    move-object v8, v5

    move/from16 v41, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v5, v23, v18

    move/from16 v49, v7

    move-object/from16 v50, v8

    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v5, v50, v18

    const-wide v7, 0x10300000003L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v3, p2

    move-object/from16 v4, v23

    move/from16 v6, v41

    move/from16 v7, v49

    move-object/from16 v5, v50

    goto :goto_f

    :cond_11
    move/from16 p2, v3

    move-object/from16 v23, v4

    move-object/from16 v50, v5

    move/from16 v41, v6

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_10

    :cond_12
    move/from16 p2, v3

    move-object/from16 v23, v4

    move-object/from16 v50, v5

    move/from16 v41, v6

    :goto_10
    add-int/lit8 v6, v41, 0x1

    move/from16 v3, p2

    move-object/from16 v4, v23

    move-object/from16 v5, v50

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000aL

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000bL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_15

    const-wide v14, 0x20b00000010L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v1

    move/from16 v23, v2

    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_14

    move/from16 v41, v1

    aget v1, v6, v2

    move-wide/from16 v49, v4

    move-wide/from16 v42, v12

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const-wide v4, 0x10500000002L

    invoke-virtual {v0, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v41

    move-wide/from16 v12, v42

    move-wide/from16 v4, v49

    goto :goto_12

    :cond_14
    move-wide/from16 v49, v4

    move-wide/from16 v42, v12

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_13

    :cond_15
    move-object/from16 v18, v1

    move/from16 v23, v2

    move-wide/from16 v49, v4

    move-wide/from16 v42, v12

    :goto_13
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v1, v18

    move-wide/from16 v12, v42

    move-wide/from16 v4, v49

    const/4 v14, 0x7

    goto :goto_11

    :cond_16
    move-wide/from16 v49, v4

    move-wide/from16 v42, v12

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    move v14, v1

    :goto_14
    if-ltz v14, :cond_17

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    const-wide v1, 0x20b0000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-wide/from16 v44, v1

    const-wide v1, 0x10b00000002L

    move-wide v4, v5

    const/4 v6, 0x0

    move-wide/from16 v7, v44

    move-wide/from16 v4, v49

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v15

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, -0x1

    const-wide v7, 0x10e00000001L

    goto :goto_14

    :cond_17
    move-wide/from16 v4, v49

    const-wide v1, 0x10b00000004L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b00000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const-wide v14, 0x10300000001L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const-wide v14, 0x10300000002L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v7, 0x2

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    const-wide v7, 0x10300000003L

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v3, 0x3

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v7, 0x4

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const-wide v14, 0x10300000005L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v7, 0x5

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const-wide v14, 0x10300000006L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000007L

    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000008L

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000009L

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1030000000aL

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v7

    const-wide v14, 0x1030000000bL

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000000cL

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v3

    invoke-virtual {v0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x1050000000dL

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000000eL

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1030000000fL

    const/4 v3, 0x6

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000010L

    move/from16 v46, v13

    const/4 v14, 0x7

    invoke-virtual {v10, v14, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    invoke-virtual {v0, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000011L

    const/16 v12, 0x8

    invoke-virtual {v10, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000012L

    const/16 v13, 0x9

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v3

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000013L

    const/4 v5, 0x6

    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000014L

    const/4 v14, 0x7

    invoke-virtual {v10, v14, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000015L

    invoke-virtual {v10, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000016L

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v7, p3

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    if-eqz v1, :cond_18

    const-wide v2, 0x10b00000012L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10100000001L

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v11

    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v4, 0x10800000002L

    move-object/from16 v8, p4

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10100000003L

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v11

    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v4, 0x10100000004L

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v11

    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_15

    :cond_18
    move-object/from16 v8, p4

    :goto_15
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_19

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v4, 0x20b00000013L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v0, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v13

    const-wide v11, 0x10300000002L

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v11

    const-wide v13, 0x10300000003L

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v11

    const-wide v13, 0x10300000004L

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v11

    const-wide v13, 0x10500000005L

    invoke-virtual {v0, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v11

    const-wide v13, 0x10500000006L

    invoke-virtual {v0, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000007L

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v3

    invoke-virtual {v0, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_19
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v11

    const/4 v12, 0x0

    :goto_17
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_1b

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-nez v3, :cond_1a

    move-object v14, v7

    move-wide/from16 v4, v49

    const-wide v19, 0x10500000001L

    goto :goto_18

    :cond_1a
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-wide v4, 0x20b00000015L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 p3, v3

    const-wide v2, 0x10500000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v19, v2

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v3, p3

    move-object v14, v7

    move-wide v7, v4

    move-wide/from16 v4, v49

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v13

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_18
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p4

    move-wide/from16 v49, v4

    move-object v7, v14

    goto :goto_17

    :cond_1b
    move-object v14, v7

    move-wide/from16 v4, v49

    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v6

    const-wide/16 v24, 0x0

    cmp-long v3, v6, v24

    if-nez v3, :cond_1c

    goto :goto_1a

    :cond_1c
    const-wide v11, 0x20b00000014L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v2, 0x10e00000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000002L

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_1d
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_1b
    if-ltz v8, :cond_1e

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    const-wide v1, 0x20b00000016L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 p2, v3

    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_1e
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    :goto_1c
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v1, v2, :cond_20

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_1f

    const-wide v6, 0x20b00000017L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v11, 0x10e00000001L

    invoke-virtual {v0, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_20
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000dL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000eL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_1d
    if-ltz v8, :cond_22

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v1, 0x20b00000019L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v1, v46

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000002L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_21

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    :cond_21
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000005L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, -0x1

    const/16 v46, 0x1

    goto :goto_1d

    :cond_22
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000001cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v46, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_24

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1f
    if-ltz v3, :cond_23

    const-wide v6, 0x20b0000001aL

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v0, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    :cond_23
    const-wide v11, 0x10500000002L

    const/4 v13, 0x0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_24
    const/4 v13, 0x0

    const-wide v1, 0x10b00000005L

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {v10, v4, v5, v13}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    const-wide v11, 0x10300000001L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v10, v4, v5, v13}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v10, p0

    move-object v15, v14

    move/from16 v2, v17

    move-object/from16 v1, v22

    move-object/from16 v13, v30

    move-wide/from16 v11, v37

    move-wide/from16 v8, v42

    move/from16 p2, v46

    goto/16 :goto_2

    :cond_25
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    const/16 v1, 0x24

    const-wide v3, 0x10500000001L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v1

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const-wide v5, 0x10900000003L

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x10900000004L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v9, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v9

    if-ge v1, v9, :cond_0

    const-wide v9, 0x20b00000005L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v13

    invoke-virtual {v2, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1, v7}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    const-wide/16 v9, 0x0

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v11

    move-wide v5, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v15

    if-eqz v15, :cond_12

    iget-wide v5, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v16, v3, v9

    if-gez v16, :cond_1

    move-wide v3, v5

    :cond_1
    move-wide/from16 v16, v9

    iget-wide v9, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v9, v9, p3

    if-ltz v9, :cond_11

    cmp-long v9, p3, v16

    if-ltz v9, :cond_f

    if-nez v13, :cond_f

    iget-byte v9, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x5

    if-eq v9, v10, :cond_5

    iget-byte v9, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v12, 0x7

    if-eq v9, v12, :cond_5

    iget-byte v9, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v12, 0x4

    if-eq v9, v12, :cond_5

    iget-byte v9, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v12, 0x8

    if-ne v9, v12, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v8, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_4

    iget-byte v8, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v10, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v9, v7, 0x20

    if-eqz v9, :cond_3

    move-wide v9, v5

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-wide v9, v5

    const/4 v6, 0x0

    :goto_2
    move-wide v4, v3

    move-object v3, v15

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_5

    :cond_4
    move-wide v9, v5

    move-wide v4, v3

    move-object v3, v15

    goto :goto_6

    :cond_5
    :goto_3
    move-wide v9, v5

    move-wide v4, v3

    move-object v3, v15

    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v12, 0x0

    iput-byte v12, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_5
    const/4 v13, 0x1

    :goto_6
    if-eqz v14, :cond_e

    iget-byte v2, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v2, :cond_8

    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v12, 0x0

    iput-byte v12, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v15, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move v2, v12

    :goto_9
    const/16 v6, 0x17

    if-ge v2, v6, :cond_d

    invoke-virtual {v14, v2}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_a

    :cond_9
    move v0, v2

    const/4 v2, 0x0

    goto :goto_d

    :cond_a
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    :goto_b
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_c

    iput v2, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v0, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v0, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v0, v7, 0x20

    move-object/from16 v21, v6

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    goto :goto_c

    :cond_b
    const/4 v6, 0x0

    :goto_c
    move v0, v2

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v2, 0x0

    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v12, v12, 0x1

    move v2, v0

    move-object/from16 v6, v21

    goto :goto_b

    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto :goto_a

    :goto_d
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x0

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v15, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v14, v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    :cond_f
    move-wide v9, v5

    const/4 v2, 0x0

    move-wide v4, v3

    move-object v3, v15

    :goto_e
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    :goto_f
    move-object/from16 v18, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    goto :goto_10

    :cond_11
    move-wide v9, v5

    move-wide v4, v3

    :goto_10
    move-object/from16 v0, p0

    move-wide v3, v4

    move-wide v5, v9

    move-wide/from16 v9, v16

    goto/16 :goto_1

    :cond_12
    move-wide/from16 v16, v9

    cmp-long v0, p3, v16

    if-ltz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v3, 0x20900000006L

    invoke-virtual {v2, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_15

    :try_start_1
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_11

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_11
    throw v1
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long v5, v4, v10

    const-wide v12, 0x10b00000001L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v14

    move-wide/from16 v16, v10

    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v18

    div-long v14, v18, v16

    const-wide v10, 0x10300000003L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    move-wide/from16 v20, v8

    const-wide v7, 0x10300000004L

    invoke-virtual {v1, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    const-wide v7, 0x10300000005L

    invoke-virtual {v1, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    const-wide v8, 0x10300000006L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    const-wide v10, 0x10300000007L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    const-wide v14, 0x10300000008L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v2

    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1030000000bL

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v7

    invoke-virtual {v1, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v2

    const-wide v14, 0x1030000000cL

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v12, 0x10500000001L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v7

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v7

    const-wide v12, 0x10500000002L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000003L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v7

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000004L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v7

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000005L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v7

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v12

    div-long v12, v12, v16

    invoke-virtual {v1, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v12

    div-long v12, v12, v16

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    const-wide v14, 0x10300000008L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-ltz v7, :cond_0

    div-long v2, v2, v16

    const-wide v14, 0x10300000003L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v14, 0x10300000004L

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    cmp-long v7, v2, v12

    if-ltz v7, :cond_1

    div-long v2, v2, v16

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_1
    const-wide v14, 0x10300000004L

    const/4 v2, -0x1

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_0
    const-wide v2, 0x20b00000005L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v7

    invoke-static {v1, v2, v3, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    move v2, v4

    :goto_1
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-wide v12, 0x10e00000001L

    const/4 v7, 0x1

    if-ge v2, v3, :cond_6

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    sget v3, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v2, v3, :cond_4

    sget v3, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v4

    :goto_4
    move-wide/from16 v26, v5

    const-wide v4, 0x20b00000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    if-eqz v7, :cond_5

    const-wide v12, 0x10800000002L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_5
    move-wide v12, v4

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move v5, v2

    const-wide v2, 0x10b00000003L

    move v15, v5

    move-wide v10, v12

    move-wide/from16 v5, v26

    const-wide v12, 0x10300000005L

    const/4 v14, 0x0

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v15, 0x1

    move v4, v14

    const-wide v10, 0x10300000007L

    const-wide/16 v12, 0x0

    const-wide v14, 0x10300000004L

    goto :goto_1

    :cond_6
    move v14, v4

    move-wide v10, v12

    const-wide v12, 0x10300000005L

    const-wide v2, 0x20b00000006L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    array-length v4, v3

    move v15, v14

    :goto_6
    if-ge v15, v4, :cond_8

    aget v10, v3, v15

    invoke-virtual {v2, v10}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v10

    array-length v11, v10

    move v8, v14

    :goto_7
    if-ge v8, v11, :cond_7

    aget v9, v10, v8

    const-wide v12, 0x20300000007L

    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    const-wide v12, 0x10300000005L

    goto :goto_7

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const-wide v8, 0x10300000006L

    const-wide v10, 0x10e00000001L

    const-wide v12, 0x10300000005L

    goto :goto_6

    :cond_8
    const-wide v2, 0x10b00000009L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v2, 0x10b0000000aL

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v2, 0x10b0000000cL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v0, v14, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v8

    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v7, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v8

    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v14, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    const-wide v12, 0x10300000005L

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v7, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    const-wide v10, 0x10300000006L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    const-wide v12, 0x10300000004L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    const-wide v12, 0x10300000007L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v9, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    const-wide v12, 0x10300000008L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    const-wide v12, 0x10300000009L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const-wide v9, 0x1030000000aL

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b0000000bL

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v2, 0x10b0000000dL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000001L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v10, 0x10900000001L

    if-eqz v2, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-wide v3, 0x20b0000000eL

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move v10, v7

    const/4 v7, 0x0

    move-wide v11, v3

    move-object v4, v2

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move v7, v10

    goto :goto_8

    :cond_9
    move v2, v7

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    move v4, v14

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    :goto_9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_d

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_a
    if-ltz v9, :cond_c

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13, v5, v6, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v28

    add-long v22, v22, v28

    :cond_a
    invoke-virtual {v12, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12, v5, v6, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v24, v24, v12

    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    const-wide v3, 0x10b0000000fL

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v12

    div-long v12, v12, v16

    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v9, v22, v16

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v9, v24, v16

    const-wide v12, 0x10300000004L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v12, 0x10300000005L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000006L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000007L

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10500000008L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v12, 0x10300000009L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x1030000000aL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000bL

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x1030000000cL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000dL

    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x1030000000eL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x1050000000fL

    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10300000010L

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v2, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000011L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000012L

    invoke-virtual {v0, v2, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v2, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    const-wide v11, 0x10300000013L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000014L

    invoke-virtual {v0, v2, v14}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10300000015L

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v11

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v3

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v7

    const-wide v9, 0x10b00000017L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    div-long v3, v3, v16

    const-wide v11, 0x10300000001L

    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000002L

    invoke-virtual {v1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v3, p2

    invoke-virtual {v3, v14}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v4

    move v7, v14

    :goto_b
    const/16 v9, 0x14

    if-ge v7, v9, :cond_14

    if-eqz v7, :cond_13

    const/4 v9, 0x6

    if-eq v7, v9, :cond_12

    const/16 v9, 0x8

    if-eq v7, v9, :cond_11

    const/16 v9, 0xb

    if-eq v7, v9, :cond_10

    if-eq v7, v8, :cond_f

    const/4 v13, 0x3

    if-eq v7, v13, :cond_e

    packed-switch v7, :pswitch_data_0

    move v9, v14

    goto :goto_c

    :pswitch_0
    move v9, v2

    goto :goto_c

    :pswitch_1
    const/16 v9, 0xd

    goto :goto_c

    :pswitch_2
    move v9, v13

    goto :goto_c

    :pswitch_3
    const/16 v9, 0xc

    goto :goto_c

    :cond_e
    const/16 v9, 0xb

    goto :goto_c

    :cond_f
    const/4 v13, 0x3

    const/4 v9, 0x5

    goto :goto_c

    :cond_10
    const/4 v13, 0x3

    const/4 v9, 0x4

    goto :goto_c

    :cond_11
    const/4 v13, 0x3

    move v9, v8

    goto :goto_c

    :cond_12
    const/4 v13, 0x3

    const/4 v9, 0x6

    goto :goto_c

    :cond_13
    const/4 v13, 0x3

    const/4 v9, 0x7

    :goto_c
    const-wide v10, 0x20b00000011L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000003L

    invoke-virtual {v4, v7}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10800000004L

    invoke-direct {v0, v7}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v8

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10100000005L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000006L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p2

    const/4 v2, 0x1

    const/4 v8, 0x2

    goto/16 :goto_b

    :cond_14
    const-wide v2, 0x10b00000012L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v7, 0x10100000001L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v7, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x10100000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x10100000004L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/Map$Entry;

    const-wide v2, 0x20b00000013L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const-wide v2, 0x10b00000003L

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_d

    :cond_15
    move v8, v14

    :goto_e
    const/4 v15, 0x5

    if-ge v8, v15, :cond_16

    const-wide v2, 0x20b00000014L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000015L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move v8, v14

    :goto_f
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v8, v2, :cond_17

    const-wide v2, 0x20b00000010L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_17
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-wide v3, 0x20b00000016L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_10

    :cond_18
    move v8, v14

    const/4 v15, 0x5

    :goto_11
    if-ge v8, v15, :cond_19

    const-wide v2, 0x20b00000018L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_19
    move v8, v14

    :goto_12
    const/16 v2, 0x8

    if-ge v8, v2, :cond_1a

    const-wide v2, 0x20b00000019L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1a
    :goto_13
    const/16 v2, 0xd

    if-ge v14, v2, :cond_1b

    const-wide v2, 0x20b0000001aL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10e00000001L

    invoke-virtual {v1, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_1b
    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .locals 14

    move-object/from16 v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    move/from16 v3, p6

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v8

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    const-wide/16 v10, -0x1

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    move-wide/from16 p3, v10

    const-wide v10, 0x10300000001L

    invoke-virtual {p0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    invoke-virtual {p0, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    cmp-long v0, v6, p3

    if-eqz v0, :cond_3

    const-wide v0, 0x10300000003L

    invoke-virtual {p0, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    cmp-long v0, v8, p3

    if-eqz v0, :cond_4

    const-wide v0, 0x10300000004L

    invoke-virtual {p0, v0, v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_4
    cmp-long v0, v4, p3

    if-eqz v0, :cond_5

    const-wide v0, 0x10300000005L

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_5
    invoke-virtual {p0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 2

    if-eqz p4, :cond_1

    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p5

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide p5

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p4

    const-wide/16 v0, 0x0

    cmp-long p7, p5, v0

    if-nez p7, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p5, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 9

    const-wide/32 v0, 0x15180

    div-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "d "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    mul-long/2addr v2, v0

    sub-long v0, p1, v2

    const-wide/16 v6, 0xe10

    div-long/2addr v0, v6

    cmp-long v8, v0, v4

    if-nez v8, :cond_1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v0, v6

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v0, v6

    cmp-long v8, v0, v4

    if-nez v8, :cond_3

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v0, v6

    add-long/2addr v2, v0

    cmp-long v0, p1, v4

    if-nez v0, :cond_6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_0
    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.8f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.7f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.6f"

    goto :goto_0

    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.5f"

    goto :goto_0

    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.4f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.3f"

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.2f"

    goto :goto_0

    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    const-string v0, "%.1f"

    goto :goto_0

    :cond_8
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAllNetworkTypesCount()I
    .locals 5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v3, v0, 0x3

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DATA_CONNECTION_NAMES length does not match network type count. Expected: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getAllNetworkTypesCount$ravenwood()I
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount()I
    .locals 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount$ravenwood()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected static blacklist getDisplayTransport([I)I
    .locals 0

    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result p0

    return p0
.end method

.method protected static blacklist getDisplayTransport$ravenwood([I)I
    .locals 8

    sget-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, p0, v6

    if-ne v7, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget p0, p0, v2

    return p0
.end method

.method protected static blacklist getModemTxPowerLevelCount()I
    .locals 1

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount$ravenwood()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private blacklist getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object p0

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget v5, p0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n      "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v2

    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v1, v4, v6

    aget-wide v8, p2, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    const-wide/16 v6, 0x0

    cmp-long v10, v12, v6

    if-nez v10, :cond_2

    cmp-long v6, v14, v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16

    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v18

    move v5, v3

    long-to-double v2, v6

    move-wide/from16 v16, v8

    add-long v8, v12, v14

    long-to-double v8, v8

    div-double v19, v2, v8

    cmpl-double v2, v19, v16

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v10, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v21, 0x0

    move-wide/from16 v16, v6

    invoke-direct/range {v10 .. v21}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats-IA;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v5, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method protected static blacklist isKernelStatsAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected static blacklist isKernelStatsAvailable$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist isLowRamDevice()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method protected static blacklist isLowRamDevice$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .locals 2

    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide p0, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .locals 5

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    return v2

    :cond_3
    const/4 v4, 0x5

    if-ne p0, v4, :cond_4

    return v2

    :cond_4
    const/4 v2, 0x6

    if-gt p0, v2, :cond_5

    return v0

    :cond_5
    const/16 v0, 0xb

    if-gt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xc

    if-gt p0, v0, :cond_7

    return v3

    :cond_7
    const/16 v0, 0xd

    if-gt p0, v0, :cond_8

    return v4

    :cond_8
    return v2
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 8

    xor-int/2addr p1, p2

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p4

    const/4 v3, -0x1

    const-string v4, ":\""

    const-string v5, "\""

    if-ge v0, v2, :cond_c

    aget-object v2, p4, v0

    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_b

    if-eqz p5, :cond_1

    const-string v6, " "

    goto :goto_1

    :cond_1
    const-string v6, ","

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v7, "="

    if-gez v6, :cond_7

    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p2

    if-eqz v6, :cond_2

    const-string v6, "+"

    goto :goto_2

    :cond_2
    const-string v6, "-"

    :goto_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_5

    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v1, v3, :cond_4

    goto :goto_4

    :cond_4
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    :goto_4
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v2, "\"\""

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    if-eqz p5, :cond_8

    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v4, :cond_a

    if-ltz v3, :cond_a

    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_a

    if-eqz p5, :cond_9

    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_7

    :cond_9
    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    if-nez v1, :cond_10

    if-eqz p3, :cond_10

    if-eqz p5, :cond_d

    const-string p1, " wake_lock="

    goto :goto_9

    :cond_d
    const-string p1, ",w="

    :goto_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_f

    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne p1, v3, :cond_e

    goto :goto_a

    :cond_e
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_f
    :goto_a
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_b
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v1, "    High frequency (3GHz to 6GHz):\n"

    const-string v2, "    Mmwave frequency (greater than 6GHz):\n"

    const-string v3, "    Unknown frequency:\n"

    const-string v4, "    Low frequency (less than 1GHz):\n"

    const-string v5, "    Middle frequency (1GHz to 3GHz):\n"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v1, "        good:     "

    const-string v2, "        great:    "

    const-string v3, "        unknown:  "

    const-string v4, "        poor:     "

    const-string v5, "        moderate: "

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v8

    const-wide/16 v1, 0x3e8

    mul-long v3, p4, v1

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v10, v3, v1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v12

    const/4 v13, 0x2

    move v2, v9

    move v1, v13

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    if-ne v1, v13, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :cond_0
    move v3, v14

    :goto_1
    sub-int/2addr v3, v14

    move v15, v2

    move v2, v3

    :goto_2
    if-ltz v2, :cond_7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v1, v13, :cond_1

    aget-object v4, v7, v2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v4, "    All frequencies:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "      Signal Strength Time:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move v3, v9

    move/from16 v16, v3

    :goto_4
    const-wide/16 v17, 0x0

    const-string v5, ")\n"

    const-string v13, "("

    if-ge v3, v12, :cond_3

    move v14, v4

    move-object v9, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v7

    cmp-long v4, v7, v17

    if-gtz v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v20, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v4, v14

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    move v14, v4

    move-object v9, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      Tx Time:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_5

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v7

    cmp-long v21, v7, v17

    if-gtz v21, :cond_4

    move/from16 v21, v3

    goto :goto_7

    :cond_4
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v3

    aget-object v3, v20, v21

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    :goto_7
    add-int/lit8 v3, v21, 0x1

    goto :goto_6

    :cond_5
    move-wide/from16 v4, p4

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      Rx Time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    goto :goto_8

    :cond_6
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_8
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v4, p4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    add-int/lit8 v1, v1, -0x1

    move v2, v15

    const/4 v9, 0x0

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  (no activity)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v16, v11

    array-length v11, v15

    const-wide/16 v18, 0x0

    move-wide/from16 v21, v18

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    move/from16 v23, v11

    aget-object v11, v15, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    add-long v21, v21, v24

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v23

    goto :goto_0

    :cond_0
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move/from16 v23, v11

    const-string v11, "("

    move-wide/from16 v24, v9

    const-string v9, "     "

    if-eqz v23, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    move-wide/from16 v26, v7

    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Scan time:  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v7, v5, v26

    add-long v7, v7, v21

    sub-long v7, v13, v7

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide/from16 v26, v7

    :goto_1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move-object v10, v7

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v21, v7

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Idle time:   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Rx time:     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v26

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Tx time:     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-object/from16 v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x5

    const/4 v12, 0x1

    if-nez v5, :cond_3

    new-array v5, v10, [Ljava/lang/String;

    const-string v10, "[0]"

    const/16 v20, 0x0

    aput-object v10, v5, v20

    const-string v10, "[1]"

    aput-object v10, v5, v12

    const-string v10, "[2]"

    aput-object v10, v5, v8

    const-string v8, "[3]"

    aput-object v8, v5, v7

    const-string v7, "[4]"

    aput-object v7, v5, v6

    goto :goto_3

    :cond_3
    new-array v5, v10, [Ljava/lang/String;

    const-string v10, "   less than 0dBm: "

    const/16 v20, 0x0

    aput-object v10, v5, v20

    const-string v10, "   0dBm to 8dBm: "

    aput-object v10, v5, v12

    const-string v10, "   8dBm to 15dBm: "

    aput-object v10, v5, v8

    const-string v8, "   15dBm to 20dBm: "

    aput-object v8, v5, v7

    const-string v7, "   above 20dBm: "

    aput-object v7, v5, v6

    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v6, v12, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    aget-object v8, v8, v7

    move-object v10, v5

    move v12, v6

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v10, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object v5, v10

    move v6, v12

    goto :goto_4

    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    const/16 v20, 0x0

    aget-object v5, v5, v20

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    cmp-long v0, v24, v18

    const-wide v4, 0x414b774000000000L    # 3600000.0

    if-lez v0, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Battery drain: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v24

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    cmp-long v0, v16, v18

    if-lez v0, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Monitored rail energy drain: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v6, v16

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 2

    long-to-float p0, p2

    const/high16 p2, 0x46200000    # 10240.0f

    cmpl-float p3, p0, p2

    const/high16 v0, 0x44800000    # 1024.0f

    if-ltz p3, :cond_0

    div-float/2addr p0, v0

    const-string p3, "KB"

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    cmpl-float v1, p0, p2

    if-ltz v1, :cond_1

    div-float/2addr p0, v0

    const-string p3, "MB"

    :cond_1
    cmpl-float v1, p0, p2

    if-ltz v1, :cond_2

    div-float/2addr p0, v0

    const-string p3, "GB"

    :cond_2
    cmpl-float v1, p0, p2

    if-ltz v1, :cond_3

    div-float/2addr p0, v0

    const-string p3, "TB"

    :cond_3
    cmpl-float p2, p0, p2

    if-ltz p2, :cond_4

    div-float/2addr p0, v0

    const-string p3, "PB"

    :cond_4
    float-to-int p0, p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "    "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ": "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo p6, "realtime ("

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " times)"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p3, v3

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p5

    cmp-long p7, p5, v5

    if-ltz p7, :cond_0

    const-string p7, " max="

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p2

    cmp-long p4, p2, v5

    if-ltz p4, :cond_1

    const-string p4, " (running for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, " (running)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x20

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p4, 0x28

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times)"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p4

    cmp-long p6, p4, v2

    if-ltz p6, :cond_1

    const-string p6, " max="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide p4

    cmp-long p6, p4, v0

    if-lez p6, :cond_2

    const-string p6, " actual="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-ltz p3, :cond_3

    const-string p3, " (running for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, " (running)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string p0, ", "

    return-object p0

    :cond_5
    return-object p6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x3e8

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v12

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    move-wide v1, v8

    move-wide v10, v1

    move-wide v12, v10

    :goto_0
    move-object/from16 v3, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    div-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ","

    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    return-object v6
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .locals 0

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .locals 0

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .locals 0

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_1

    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract blacklist canReadTimeToFullNow()Z
.end method

.method public abstract blacklist canTrustSecPowerProfile()Z
.end method

.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public blacklist dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    if-eqz v0, :cond_3

    and-int/lit8 p5, p3, 0x6

    if-nez p5, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    move-object p6, p7

    move p5, v0

    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public blacklist dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string v0, "i"

    const-string/jumbo v1, "vers"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    :cond_0
    and-int/lit8 p5, p4, 0x8

    if-eqz p5, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    move-object p5, p7

    :try_start_1
    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 114

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v6, :cond_0

    sget-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "err"

    invoke-static {v1, v10, v0, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v21, 0x3e8

    mul-long v2, v2, v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-long v7, v11, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v13

    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v16

    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v18

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v23

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v25

    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v2

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v27

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v29

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v31

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v33

    move-wide/from16 v35, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v39

    invoke-virtual {v0, v2, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v41

    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v43

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v20

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v45

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v47

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v49

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v51

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v53

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v55

    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v57, v2

    const/16 v2, 0x80

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    sget-object v58, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move-object/from16 v59, v3

    aget-object v3, v58, v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    goto :goto_0

    :cond_1
    const-string v58, "N/A"

    :goto_0
    move-object/from16 v60, v58

    div-long v16, v16, v21

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    div-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    div-long v25, v25, v21

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    div-long v4, v35, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    div-long v23, v23, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    div-long v29, v29, v21

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    filled-new-array/range {v60 .. v71}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "bt"

    move-wide/from16 v16, v11

    const/4 v11, 0x0

    invoke-static {v1, v11, v3, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v23, 0x0

    move-wide/from16 v11, v23

    move-wide/from16 v18, v11

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_5

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v111, v25

    move-object/from16 v25, v2

    move/from16 v2, v111

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v29, v2

    move-object/from16 v2, v26

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    move/from16 v26, v4

    move-object/from16 v30, v5

    move/from16 v4, v57

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long/2addr v11, v4

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v18, v18, v4

    :cond_3
    add-int/lit8 v2, v29, -0x1

    move/from16 v4, v26

    move-object/from16 v5, v30

    const/16 v57, 0x1

    goto :goto_2

    :cond_4
    move/from16 v26, v4

    add-int/lit8 v4, v26, 0x1

    move-object/from16 v2, v25

    const/16 v57, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v25, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v29

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v35

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v60

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v62

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v64

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v66

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v68

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v70

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v72

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v74

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v83

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v84

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    filled-new-array/range {v76 .. v85}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "gn"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "gmcd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const/4 v2, 0x0

    move-wide/from16 v35, v11

    move-object/from16 v86, v25

    move-object/from16 v12, v59

    const/4 v11, 0x2

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v4

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v25

    div-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    div-long v25, v25, v21

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4, v15, v15, v15}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "gwfl"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "gwfcd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v4, "gble"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object v2, v3

    div-long v27, v27, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    div-long v45, v45, v21

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    div-long v3, v35, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    div-long v31, v31, v21

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    div-long v33, v33, v21

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    div-long v39, v39, v21

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    div-long v43, v43, v21

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    div-long v37, v37, v21

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    div-long v41, v41, v21

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    filled-new-array/range {v58 .. v78}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "m"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_6

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const-string v5, "br"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v11

    if-ge v5, v11, :cond_7

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v5, "sgt"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v3, "sst"

    invoke-static {v1, v11, v2, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v11

    :goto_5
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    const-string/jumbo v3, "sgc"

    invoke-static {v1, v11, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_6
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_9

    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const-string v4, "dct"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v11

    :goto_7
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_a

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    const-string v4, "dcc"

    invoke-static {v1, v11, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v11, 0x8

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v11, :cond_b

    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    const-string/jumbo v4, "wst"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    :goto_9
    if-ge v4, v11, :cond_c

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    const-string/jumbo v4, "wsc"

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xd

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_d

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    const-string/jumbo v5, "wsst"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v11

    :goto_b
    if-ge v5, v3, :cond_e

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_e
    const-string/jumbo v5, "wssc"

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v4, :cond_f

    invoke-virtual {v0, v11, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_f
    const-string/jumbo v11, "wsgt"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v11, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v3

    :goto_d
    if-ge v11, v4, :cond_10

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_10
    const-string/jumbo v11, "wsgc"

    invoke-static {v1, v3, v2, v11, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v25

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v5

    div-long v25, v25, v21

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v11, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v11, "wmct"

    invoke-static {v1, v3, v2, v11, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    div-long v47, v47, v21

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    div-long v49, v49, v21

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    div-long v51, v51, v21

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    div-long v53, v53, v21

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    div-long v55, v55, v21

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    filled-new-array/range {v25 .. v34}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "dc"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v25, 0x1f4

    const-string v11, "\""

    if-gez v9, :cond_12

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Ljava/util/Map$Entry;

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x0

    move/from16 v87, v4

    move-wide/from16 v111, v7

    move-object v8, v2

    move-object v2, v3

    move-wide/from16 v3, v111

    const-string v7, ""

    move-object/from16 v28, v8

    move-object v8, v1

    move-object v1, v12

    move-object/from16 v12, v28

    move-wide/from16 v28, v13

    move/from16 v13, v87

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object v7, v1

    move-wide v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "kwl"

    const/4 v5, 0x0

    invoke-static {v8, v5, v12, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v13

    move-wide/from16 v13, v28

    move-object/from16 v111, v12

    move-object v12, v7

    move-wide/from16 v112, v1

    move-object v1, v8

    move-wide/from16 v7, v112

    move-object/from16 v2, v111

    goto :goto_e

    :cond_11
    move-wide/from16 v28, v13

    move v13, v4

    move-wide/from16 v111, v7

    move-object v8, v1

    move-object v7, v12

    move-object v12, v2

    move-wide/from16 v1, v111

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-long v19, v19, v25

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v14, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "wr"

    const/4 v14, 0x0

    invoke-static {v8, v14, v12, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_12
    move-wide/from16 v28, v13

    move v13, v4

    move-wide/from16 v111, v7

    move-object v8, v1

    move-object v7, v12

    move-object v12, v2

    move-wide/from16 v1, v111

    :cond_13
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_16

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    add-long v19, v19, v25

    div-long v19, v19, v21

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Timer;

    if-eqz v13, :cond_14

    invoke-virtual {v13, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v30

    add-long v30, v30, v25

    div-long v30, v30, v21

    :cond_14
    if-eqz v13, :cond_15

    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v5, v13, v14}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v13, "rpm"

    const/4 v14, 0x0

    invoke-static {v8, v14, v12, v13, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x5

    goto :goto_10

    :cond_16
    move-object/from16 v3, p6

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v4, v5, v13, v14}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "pws"

    const/4 v14, 0x0

    invoke-static {v8, v14, v12, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v14}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v4

    const/4 v5, 0x0

    :goto_11
    const/16 v13, 0x14

    const-string/jumbo v14, "pwi"

    if-ge v5, v13, :cond_18

    sget-object v13, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v13, v13, v5

    if-nez v13, :cond_17

    const-string v13, "???"

    :cond_17
    invoke-virtual {v4, v5}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v19

    move-wide/from16 v30, v1

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v0, "0"

    filled-new-array {v13, v1, v2, v0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v1, v12, v14, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    goto :goto_11

    :cond_18
    move-wide/from16 v30, v1

    new-instance v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 p1, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p6, v0

    const-string/jumbo v0, "uid"

    filled-new-array {v0, v5, v13, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v4, v12, v14, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p6

    goto :goto_12

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1c

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v4

    array-length v5, v4

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v5, :cond_1b

    aget v13, v4, v14

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move-object/from16 p6, v0

    const/16 v0, 0x2c

    if-eqz v19, :cond_1a

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p6

    goto :goto_14

    :cond_1b
    move-object/from16 p6, v0

    const/16 v0, 0x2c

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p6

    goto :goto_13

    :cond_1c
    move-object/from16 p6, v0

    const/16 v0, 0x2c

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gcf"

    const/4 v5, 0x0

    invoke-static {v8, v5, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_1d
    move-object/from16 p6, v0

    const/16 v0, 0x2c

    :goto_15
    const/4 v13, 0x0

    :goto_16
    if-ge v13, v10, :cond_60

    move-object/from16 v14, v86

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ltz v9, :cond_1f

    if-eq v2, v9, :cond_1f

    move-object v1, v8

    move/from16 p1, v10

    move-object v9, v11

    move/from16 v27, v13

    move-object/from16 v86, v14

    move-wide/from16 v10, v16

    move-wide/from16 v19, v30

    const/16 v18, 0x1

    const/16 v30, 0x8

    const/16 v87, 0x5

    const/16 v88, 0xd

    move-object v13, v12

    move-object/from16 v16, v15

    move-object v12, v7

    :cond_1e
    move-wide/from16 v4, v28

    goto/16 :goto_49

    :cond_1f
    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v19

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v32

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v34

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v36

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v38

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v40

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v27

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v42

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v44

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v46

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v48

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v50

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v54

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v58

    const/16 v9, 0x8

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v60

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v62

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v64

    const/4 v0, 0x7

    invoke-virtual {v1, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v66

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v68

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v70

    cmp-long v0, v3, v23

    if-gtz v0, :cond_20

    cmp-long v0, v19, v23

    if-gtz v0, :cond_20

    cmp-long v0, v32, v23

    if-gtz v0, :cond_20

    cmp-long v0, v34, v23

    if-gtz v0, :cond_20

    cmp-long v0, v36, v23

    if-gtz v0, :cond_20

    cmp-long v0, v38, v23

    if-gtz v0, :cond_20

    cmp-long v0, v44, v23

    if-gtz v0, :cond_20

    cmp-long v0, v46, v23

    if-gtz v0, :cond_20

    cmp-long v0, v40, v23

    if-gtz v0, :cond_20

    if-gtz v27, :cond_20

    cmp-long v0, v50, v23

    if-gtz v0, :cond_20

    cmp-long v0, v52, v23

    if-gtz v0, :cond_20

    cmp-long v0, v42, v23

    if-gtz v0, :cond_20

    cmp-long v0, v48, v23

    if-gtz v0, :cond_20

    cmp-long v0, v54, v23

    if-gtz v0, :cond_20

    cmp-long v0, v58, v23

    if-gtz v0, :cond_20

    cmp-long v0, v60, v23

    if-gtz v0, :cond_20

    cmp-long v0, v62, v23

    if-gtz v0, :cond_20

    cmp-long v0, v64, v23

    if-gtz v0, :cond_20

    cmp-long v0, v66, v23

    if-gtz v0, :cond_20

    cmp-long v0, v68, v23

    if-gtz v0, :cond_20

    cmp-long v0, v70, v23

    if-lez v0, :cond_21

    :cond_20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v89

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v90

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v91

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v98

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v103

    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v104

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v105

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v106

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v110

    filled-new-array/range {v89 .. v110}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "nt"

    invoke-static {v8, v2, v12, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    const-string/jumbo v4, "mcd"

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v0, v8

    move-object v8, v1

    move-object v1, v0

    move v0, v10

    move-object v3, v12

    move-wide/from16 v9, v30

    const/16 v18, 0x1

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v8, v9, v10, v6}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v4

    invoke-virtual {v8, v9, v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v30

    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v12

    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v20

    invoke-virtual {v8, v9, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v32

    add-long v32, v32, v25

    div-long v32, v32, v21

    invoke-virtual {v8, v9, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v34

    add-long v34, v34, v25

    div-long v34, v34, v21

    invoke-virtual {v8, v9, v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v36

    cmp-long v27, v4, v23

    if-nez v27, :cond_23

    cmp-long v27, v30, v23

    if-nez v27, :cond_23

    if-nez v12, :cond_23

    if-nez v20, :cond_23

    cmp-long v27, v32, v23

    if-nez v27, :cond_23

    cmp-long v27, v34, v23

    if-nez v27, :cond_23

    cmp-long v27, v36, v23

    if-eqz v27, :cond_22

    goto :goto_17

    :cond_22
    move/from16 p1, v0

    move-object/from16 v31, v11

    move/from16 v27, v13

    move-object/from16 v86, v14

    move-wide/from16 v32, v16

    move/from16 v0, v18

    const/4 v5, 0x2

    const/16 v11, 0x2c

    const/16 v30, 0x8

    const/16 v87, 0x5

    goto :goto_18

    :cond_23
    :goto_17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-wide/from16 v32, v16

    move-object/from16 v16, v15

    move-object/from16 v17, v15

    move-object/from16 p1, v27

    move/from16 v27, v13

    move-object/from16 v13, p1

    move/from16 p1, v0

    move-object/from16 v86, v14

    move/from16 v0, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    const/16 v30, 0x8

    const/16 v87, 0x5

    move-object/from16 v31, v11

    move-object v14, v12

    move-object v11, v4

    move-object v12, v5

    const/16 v4, 0x2c

    const/4 v5, 0x2

    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v12, "wfl"

    invoke-static {v1, v2, v3, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v4

    :goto_18
    const-string/jumbo v4, "wfcd"

    move/from16 v56, v5

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-wide/from16 v13, v28

    move-wide/from16 v11, v32

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {v4, v9, v10, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v16, v16, v25

    div-long v16, v16, v21

    cmp-long v5, v16, v23

    if-eqz v5, :cond_2c

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move/from16 v18, v0

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v19

    goto :goto_19

    :cond_24
    const/16 v19, 0x0

    :goto_19
    invoke-virtual {v4, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    if-eqz v0, :cond_25

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v32

    goto :goto_1a

    :cond_25
    move-wide/from16 v32, v23

    :goto_1a
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_1b

    :cond_26
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_1c

    :cond_27
    const/4 v4, 0x0

    :goto_1c
    move/from16 v20, v0

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v34

    goto :goto_1d

    :cond_28
    move-wide/from16 v34, v23

    :goto_1d
    if-eqz v0, :cond_29

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v36

    goto :goto_1e

    :cond_29
    move-wide/from16 v36, v23

    :goto_1e
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    goto :goto_1f

    :cond_2a
    move-wide/from16 v38, v23

    :goto_1f
    if-eqz v0, :cond_2b

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v40

    goto :goto_20

    :cond_2b
    move-wide/from16 v40, v23

    :goto_20
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    filled-new-array/range {v42 .. v52}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "blem"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_2c
    move/from16 v18, v0

    :goto_21
    const-string v4, "ble"

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object v0, v1

    move-object v1, v3

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v3

    if-eqz v3, :cond_2f

    sget v3, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_22
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v5, v4, :cond_2e

    invoke-virtual {v8, v5, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v5

    if-eqz v4, :cond_2d

    move/from16 v16, v18

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_2e
    if-eqz v16, :cond_2f

    const-string/jumbo v4, "ua"

    invoke-static {v0, v2, v1, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v16

    goto :goto_23

    :cond_30
    move-wide/from16 v16, v23

    :goto_23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "awl"

    invoke-static {v0, v2, v1, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_24
    if-ltz v4, :cond_37

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v19, v9

    move-object/from16 v9, v16

    check-cast v9, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v17, v2

    move/from16 v5, v18

    invoke-virtual {v9, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v5, "f"

    move-object/from16 v59, v7

    const-string v7, ""

    move-wide/from16 v32, v11

    move-wide/from16 v28, v13

    move-object/from16 v16, v15

    move/from16 v14, v17

    const/16 v11, 0x5f

    move-object v13, v1

    move-object v15, v3

    move-object/from16 v17, v8

    move-object/from16 v1, v59

    move v8, v4

    move-wide/from16 v3, v19

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "p"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    goto :goto_25

    :cond_32
    const/4 v2, 0x0

    :goto_25
    const-string v5, "bp"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_36

    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v9, 0x2c

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_33

    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_33
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_34

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_34
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_35

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_35
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, "wl"

    invoke-static {v0, v14, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    :cond_36
    const/16 v2, 0xd

    const/16 v9, 0x2c

    :goto_26
    add-int/lit8 v1, v8, -0x1

    move-wide v9, v3

    move-object v7, v12

    move v2, v14

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v8, v17

    move-wide/from16 v11, v32

    const/16 v18, 0x1

    move v4, v1

    move-object v1, v13

    move-wide/from16 v13, v28

    goto/16 :goto_24

    :cond_37
    move-object/from16 v17, v8

    move-wide v3, v9

    move-wide/from16 v32, v11

    move-wide/from16 v28, v13

    move-object/from16 v16, v15

    const/16 v9, 0x2c

    const/4 v10, 0x2

    const/16 v11, 0x5f

    move-object v13, v1

    move v14, v2

    move-object v12, v7

    const/16 v2, 0xd

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long v7, v7, v21

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    cmp-long v5, v7, v23

    if-lez v5, :cond_38

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, "wmc"

    invoke-static {v0, v14, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_27
    if-ltz v5, :cond_3c

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    add-long v19, v19, v25

    div-long v19, v19, v21

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v34

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_39

    move-wide/from16 v10, v32

    invoke-virtual {v2, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v7

    goto :goto_28

    :cond_39
    move-wide/from16 v10, v32

    const-wide/16 v7, -0x1

    :goto_28
    if-eqz v2, :cond_3a

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v15

    goto :goto_29

    :cond_3a
    const/4 v15, -0x1

    :goto_29
    cmp-long v2, v19, v23

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v9, v31

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v1

    move-object/from16 v1, v31

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v19, v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v1, v2, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "sy"

    invoke-static {v0, v14, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3b
    move-object/from16 v32, v1

    move/from16 v19, v5

    move-object/from16 v9, v31

    :goto_2a
    add-int/lit8 v5, v19, -0x1

    move-object/from16 v31, v9

    move-object/from16 v1, v32

    const/16 v2, 0xd

    const/16 v9, 0x2c

    move-wide/from16 v32, v10

    const/4 v10, 0x2

    const/16 v11, 0x5f

    goto :goto_27

    :cond_3c
    move-object/from16 v9, v31

    move-wide/from16 v10, v32

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_2b
    if-ltz v2, :cond_40

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    add-long v19, v19, v25

    div-long v19, v19, v21

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v31

    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v32

    goto :goto_2c

    :cond_3d
    const-wide/16 v32, -0x1

    :goto_2c
    if-eqz v5, :cond_3e

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_2d

    :cond_3e
    const/4 v5, -0x1

    :goto_2d
    cmp-long v34, v19, v23

    if-eqz v34, :cond_3f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v20, v1

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v7, v8, v15, v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "jb"

    invoke-static {v0, v14, v13, v5, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_3f
    move-object/from16 v20, v1

    :goto_2e
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, v20

    goto :goto_2b

    :cond_40
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v1

    array-length v2, v1

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_2f
    if-ltz v7, :cond_43

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    if-eqz v8, :cond_42

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    move-wide/from16 v31, v3

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move v3, v4

    :goto_30
    array-length v15, v1

    if-ge v3, v15, :cond_41

    add-int/lit8 v15, v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    move v3, v15

    const/4 v4, 0x0

    goto :goto_30

    :cond_41
    const-string v3, "jbc"

    invoke-static {v0, v14, v13, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31

    :cond_42
    move-wide/from16 v31, v3

    :goto_31
    add-int/lit8 v7, v7, -0x1

    move-wide/from16 v3, v31

    goto :goto_2f

    :cond_43
    move-wide/from16 v31, v3

    move-object/from16 v8, v17

    invoke-virtual {v8, v12, v6}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_44

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "jbd"

    invoke-static {v0, v14, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    const-string v4, "fla"

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v1, v0

    move-object v0, v8

    move-object v3, v13

    move v2, v14

    const/16 v88, 0xd

    move v8, v6

    move-wide/from16 v6, v31

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    const-string v1, "cam"

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v8, p3

    move-object v3, v13

    move-object v4, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    const-string/jumbo v1, "vid"

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v13

    move-object v4, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    const-string v1, "aud"

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v13

    move-object v4, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    move v6, v8

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_32
    if-ge v8, v7, :cond_48

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move-object/from16 v17, v5

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_47

    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v19

    add-long v19, v19, v25

    div-long v19, v19, v21

    cmp-long v31, v19, v23

    if-eqz v31, :cond_47

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v31

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_45

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v32

    goto :goto_33

    :cond_45
    const/16 v32, 0x0

    :goto_33
    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v33

    if-eqz v14, :cond_46

    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v36

    goto :goto_34

    :cond_46
    move-wide/from16 v36, v23

    :goto_34
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    filled-new-array/range {v38 .. v43}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v14, "sr"

    invoke-static {v1, v2, v13, v14, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_32

    :cond_48
    const-string/jumbo v5, "vib"

    move-wide/from16 v31, v3

    move-object v4, v5

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move v8, v6

    move-object v3, v13

    move-wide/from16 v6, v31

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    const-string v1, "fg"

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v8, p3

    move-object v3, v13

    move-object v4, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    const-string v1, "fgs"

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v13

    move-object v4, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    move-wide v3, v6

    move v6, v8

    const/4 v5, 0x7

    new-array v7, v5, [Ljava/lang/Object;

    move-wide/from16 v14, v23

    const/4 v8, 0x0

    :goto_35
    if-ge v8, v5, :cond_49

    invoke-virtual {v0, v8, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v19

    add-long v14, v14, v19

    add-long v19, v19, v25

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x7

    goto :goto_35

    :cond_49
    cmp-long v5, v14, v23

    if-lez v5, :cond_4a

    const-string/jumbo v5, "st"

    invoke-static {v1, v2, v13, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v7

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v14

    cmp-long v5, v7, v23

    if-gtz v5, :cond_4c

    cmp-long v5, v14, v23

    if-lez v5, :cond_4b

    goto :goto_36

    :cond_4b
    move-object/from16 v15, v16

    goto :goto_37

    :cond_4c
    :goto_36
    div-long v7, v7, v21

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    div-long v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v15, v16

    filled-new-array {v5, v7, v15}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "cpu"

    invoke-static {v1, v2, v13, v7, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    if-eqz p6, :cond_57

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    if-eqz v5, :cond_51

    array-length v7, v5

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v8

    if-ne v7, v8, :cond_51

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    :goto_38
    array-length v8, v5

    if-ge v7, v8, :cond_4e

    if-eqz v7, :cond_4d

    const/16 v8, 0x2c

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    move-wide/from16 v19, v3

    aget-wide v3, v5, v7

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v19

    goto :goto_38

    :cond_4e
    move-wide/from16 v19, v3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v3

    if-eqz v3, :cond_4f

    const/4 v4, 0x0

    :goto_39
    array-length v7, v3

    if-ge v4, v7, :cond_50

    const/16 v8, 0x2c

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-wide v7, v3, v4

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4f
    const/4 v3, 0x0

    :goto_3a
    array-length v4, v5

    if-ge v3, v4, :cond_50

    const-string v4, ",0"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_50
    array-length v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "A"

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ctf"

    invoke-static {v1, v2, v13, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b

    :cond_51
    move-wide/from16 v19, v3

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_3c
    const/4 v7, 0x7

    if-ge v5, v7, :cond_58

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v8

    if-eqz v8, :cond_56

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v14

    :goto_3d
    if-ge v8, v3, :cond_53

    if-eqz v8, :cond_52

    const/16 v7, 0x2c

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    move-object/from16 v16, v15

    aget-wide v14, v4, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v16

    const/4 v7, 0x7

    const/4 v14, 0x0

    goto :goto_3d

    :cond_53
    move-object/from16 v16, v15

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v7

    if-eqz v7, :cond_54

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v3, :cond_55

    const/16 v8, 0x2c

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-wide v14, v4, v7

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_54
    const/4 v7, 0x0

    :goto_3f
    if-ge v7, v3, :cond_55

    const-string v8, ",0"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_55
    sget-object v7, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v7, v8, v14}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "ctf"

    invoke-static {v1, v2, v13, v8, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40

    :cond_56
    move-object/from16 v16, v15

    :goto_40
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v15, v16

    goto :goto_3c

    :cond_57
    move-wide/from16 v19, v3

    :cond_58
    move-object/from16 v16, v15

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_41
    if-ltz v4, :cond_5b

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v7

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v14

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v31

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v17

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v33

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v5

    cmp-long v34, v7, v23

    if-nez v34, :cond_5a

    cmp-long v34, v14, v23

    if-nez v34, :cond_5a

    cmp-long v34, v31, v23

    if-nez v34, :cond_5a

    if-nez v17, :cond_5a

    if-nez v5, :cond_5a

    if-eqz v33, :cond_59

    goto :goto_42

    :cond_59
    move-object/from16 v34, v0

    move-object/from16 v37, v3

    goto :goto_43

    :cond_5a
    :goto_42
    move-object/from16 v34, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v37, v3

    move-object/from16 v3, v36

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    filled-new-array/range {v38 .. v44}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "pr"

    invoke-static {v1, v2, v13, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_43
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v34

    move-object/from16 v3, v37

    goto :goto_41

    :cond_5b
    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_44
    if-ltz v3, :cond_1e

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    :goto_45
    if-ltz v7, :cond_5c

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v14

    add-int/2addr v8, v14

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v4

    move-object/from16 v31, v5

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    invoke-virtual {v15, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v15, v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string/jumbo v15, "wua"

    invoke-static {v1, v2, v13, v15, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v17

    move-object/from16 v5, v31

    goto :goto_45

    :cond_5c
    move-object/from16 v17, v4

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/16 v18, 0x1

    add-int/lit8 v14, v14, -0x1

    :goto_46
    if-ltz v14, :cond_5f

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v4, v28

    invoke-virtual {v15, v4, v5, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v28

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v17

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v15

    cmp-long v31, v28, v23

    if-nez v31, :cond_5e

    if-nez v17, :cond_5e

    if-eqz v15, :cond_5d

    goto :goto_47

    :cond_5d
    move-object/from16 v17, v0

    goto :goto_48

    :cond_5e
    :goto_47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    div-long v28, v28, v21

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    filled-new-array/range {v36 .. v41}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v0

    const-string v0, "apk"

    invoke-static {v1, v2, v13, v0, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_48
    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v28, v4

    move-object/from16 v0, v17

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    goto :goto_46

    :cond_5f
    move-object/from16 v17, v0

    move-wide/from16 v4, v28

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_44

    :goto_49
    add-int/lit8 v0, v27, 0x1

    move-object v8, v1

    move-wide/from16 v28, v4

    move-object v7, v12

    move-object v12, v13

    move-object/from16 v15, v16

    move-wide/from16 v30, v19

    move v13, v0

    move-wide/from16 v16, v10

    const/16 v0, 0x2c

    move/from16 v10, p1

    move-object v11, v9

    move/from16 v9, p4

    goto/16 :goto_16

    :cond_60
    return-void
.end method

.method public final blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 87

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: BatteryStats.dump called for which type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v2, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x1f4

    add-long v15, v11, v13

    div-long/2addr v15, v9

    move-wide/from16 v17, v9

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v9

    move-wide/from16 v19, v13

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v13

    move-wide/from16 v21, v9

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v9

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v7

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v23

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v2

    move-wide/from16 v25, v2

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v2

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v27

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v29

    move-wide/from16 v31, v2

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v2

    move-wide/from16 v33, v2

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getSubScreenDozeTime(JI)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-wide/from16 v35, v15

    const/16 v15, 0x80

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v15

    move-object/from16 p1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v15

    move/from16 p6, v15

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v15

    move-wide/from16 v37, v11

    const-string v11, " mAh"

    const/4 v12, 0x0

    if-lez v15, :cond_1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  Estimated battery capacity: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v39, v2

    int-to-double v2, v15

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v39, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Last learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Time on battery: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v9, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v12, "("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") realtime, "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v41, v7

    div-long v7, v13, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Time on battery screen off: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v31, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v31

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") realtime, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v25, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v25

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Time on battery screen doze: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v33, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v33

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    cmp-long v7, v39, v13

    if-lez v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Time on battery sub screen doze: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v25, v13

    div-long v13, v39, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v39

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-wide/from16 v25, v13

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Total run time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v41, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "realtime, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v23, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v7, v27, v25

    if-ltz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Battery time remaining: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v27, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    cmp-long v7, v29, v25

    if-ltz v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Charge time remaining: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, v29, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v13

    cmp-long v7, v13, v25

    const-wide v23, 0x408f400000000000L    # 1000.0

    if-ltz v7, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v27, v2

    long-to-double v2, v13

    div-double v2, v2, v23

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-wide/from16 v27, v2

    :goto_2
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v2

    cmp-long v7, v2, v25

    if-ltz v7, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Screen off discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v29, v13

    long-to-double v13, v2

    div-double v13, v13, v23

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-wide/from16 v29, v13

    :goto_3
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v13

    cmp-long v7, v13, v25

    if-ltz v7, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Screen doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v13, v13

    div-double v13, v13, v23

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    sub-long v13, v29, v2

    cmp-long v2, v13, v25

    if-ltz v2, :cond_b

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen on discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v13

    div-double v2, v2, v23

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v2

    cmp-long v7, v2, v25

    if-ltz v7, :cond_c

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Device light doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v2

    div-double v2, v2, v23

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    cmp-long v7, v2, v25

    if-ltz v7, :cond_d

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Device deep doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v2

    div-double v2, v2, v23

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    const-string v2, "  Start clock time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v13

    invoke-static {v2, v13, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v13, v37

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    move-object v11, v8

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getSubScreenOnTime(JI)J

    move-result-wide v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenHighBrightnessTime(JI)J

    move-result-wide v23

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getSubScreenHighBrightnessTime(JI)J

    move-result-wide v29

    move-wide/from16 v31, v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v7

    move-wide/from16 v33, v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v7

    const/4 v15, 0x1

    move-wide/from16 v37, v7

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    move-object/from16 v39, v11

    const/4 v11, 0x2

    move-wide/from16 v40, v7

    invoke-virtual {v0, v11, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    move-wide/from16 v42, v7

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    move-wide/from16 v44, v7

    invoke-virtual {v0, v11, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    move-object/from16 v46, v12

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v11

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  Screen on: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v48, v11

    div-long v11, v2, v17

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v11, v46

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "x, Interactive: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v50, v7

    div-long v7, v33, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v33

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v39

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v7, v31, v25

    const-string/jumbo v15, "x"

    move/from16 v33, v7

    if-lez v7, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Sub screen on: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v39, v8

    div-long v7, v31, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v31

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getSubScreenOnCount(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object/from16 v39, v8

    :goto_4
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Screen brightnesses:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/16 v31, 0x0

    :goto_5
    const-string v8, "\n    "

    move-object/from16 v32, v15

    const/4 v15, 0x5

    move-object/from16 v34, v12

    const-string v12, " "

    if-ge v7, v15, :cond_11

    move-wide/from16 v52, v9

    invoke-virtual {v0, v7, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    invoke-virtual {v0, v7, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenAutoBrightnessTime(IJI)J

    move-result-wide v54

    cmp-long v15, v9, v25

    if-nez v15, :cond_f

    move/from16 v46, v7

    move-object/from16 v9, v39

    goto :goto_6

    :cond_f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v46, v7

    div-long v7, v9, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v39

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v7, v54, v25

    if-lez v7, :cond_10

    const-string v7, " -- auto "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v54, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    :cond_10
    const/16 v31, 0x1

    :goto_6
    add-int/lit8 v7, v46, 0x1

    move-object/from16 v39, v9

    move-object/from16 v15, v32

    move-object/from16 v12, v34

    move-wide/from16 v9, v52

    goto :goto_5

    :cond_11
    move-wide/from16 v52, v9

    move-object/from16 v9, v39

    const-string v7, " (no activity)"

    if-nez v31, :cond_12

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-lez v33, :cond_17

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Sub screen brightnesses:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v31, 0x0

    :goto_7
    if-ge v10, v15, :cond_15

    move-wide/from16 v54, v2

    invoke-virtual {v0, v10, v13, v14, v5}, Landroid/os/BatteryStats;->getSubScreenBrightnessTime(IJI)J

    move-result-wide v1

    invoke-virtual {v0, v10, v13, v14, v5}, Landroid/os/BatteryStats;->getSubScreenAutoBrightnessTime(IJI)J

    move-result-wide v56

    cmp-long v3, v1, v25

    if-nez v3, :cond_13

    move-wide/from16 v58, v13

    move-object v14, v12

    move-wide/from16 v12, v54

    goto :goto_8

    :cond_13
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v58, v13

    move-object v14, v12

    div-long v12, v1, v17

    invoke-static {v4, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v54

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, v56, v25

    if-lez v1, :cond_14

    const-string v1, " -- auto "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v56, v17

    invoke-static {v4, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    :cond_14
    const/16 v31, 0x1

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    move-wide v2, v12

    move-object v12, v14

    move-wide/from16 v13, v58

    goto :goto_7

    :cond_15
    move-wide/from16 v58, v13

    move-object v14, v12

    if-nez v31, :cond_16

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    move-object v2, v1

    move-wide/from16 v58, v13

    move-object v14, v12

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen refresh rate:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_a
    const/4 v10, 0x4

    const-string v12, ""

    if-ge v1, v10, :cond_19

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMainDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    move-object/from16 v31, v14

    move-wide/from16 v13, v58

    invoke-virtual {v10, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v54

    cmp-long v10, v54, v25

    if-nez v10, :cond_18

    move-object/from16 v46, v11

    move-object/from16 v10, v31

    goto :goto_b

    :cond_18
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, "REFRESH_RATE_MODE_"

    invoke-virtual {v3, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v31

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v46, v11

    div-long v11, v54, v17

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const/4 v3, 0x1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v58, v13

    move-object/from16 v11, v46

    move-object v14, v10

    goto :goto_a

    :cond_19
    move-object/from16 v46, v11

    move-object v10, v14

    move-wide/from16 v13, v58

    if-nez v3, :cond_1a

    const-string v1, " (disabled)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-lez v33, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Sub screen refresh rate:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_c
    const/4 v11, 0x4

    if-ge v1, v11, :cond_1c

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getCoverDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    invoke-virtual {v11, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v54

    cmp-long v11, v54, v25

    if-nez v11, :cond_1b

    move-object/from16 v31, v7

    move-object v11, v8

    goto :goto_d

    :cond_1b
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v11, "REFRESH_RATE_MODE_"

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v7

    move-object v11, v8

    div-long v7, v54, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const/4 v3, 0x1

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object v8, v11

    move-object/from16 v7, v31

    goto :goto_c

    :cond_1c
    move-object/from16 v31, v7

    move-object v11, v8

    if-nez v3, :cond_1d

    const-string v1, " (disabled)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    move-object/from16 v31, v7

    move-object v11, v8

    :goto_e
    cmp-long v1, v23, v25

    if-lez v1, :cond_1f

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen high brightness time: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v23, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    cmp-long v1, v29, v25

    if-lez v1, :cond_20

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Sub screen high brightness time: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v29, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    cmp-long v1, v37, v25

    if-eqz v1, :cond_21

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Power save mode enabled: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v37, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v8, v46

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v85, v13

    move-object v14, v12

    move-wide/from16 v12, v37

    move-wide/from16 v37, v85

    move-object/from16 v23, v10

    move-object v7, v11

    move-wide/from16 v10, v52

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_21
    move-object/from16 v23, v10

    move-object v7, v11

    move-wide/from16 v37, v13

    move-object/from16 v8, v46

    move-wide/from16 v10, v52

    move-object v14, v12

    :goto_f
    cmp-long v1, v44, v25

    if-eqz v1, :cond_22

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device light idling: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v44, v17

    invoke-static {v4, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v44

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v34

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v32

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_22
    move-object/from16 v13, v32

    move-object/from16 v12, v34

    :goto_10
    cmp-long v1, v40, v25

    if-eqz v1, :cond_23

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Idle mode light time: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v14

    div-long v14, v40, v17

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v40

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " -- longest "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v14

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_23
    move-object v1, v14

    :goto_11
    cmp-long v3, v50, v25

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Device full idling: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v50, v17

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v50

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    cmp-long v3, v42, v25

    if-eqz v3, :cond_25

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Idle mode full time: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v42, v17

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v42

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " -- longest "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v14

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_25
    cmp-long v3, v48, v25

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Active phone call: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v48, v17

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v48

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  Connectivity changes: "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_27
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v29, v25

    move-wide/from16 v39, v29

    const/4 v3, 0x0

    :goto_12
    move/from16 v15, p6

    if-ge v3, v15, :cond_2c

    move/from16 p6, v15

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/BatteryStats$Uid;

    move-object/from16 p1, v1

    invoke-virtual/range {v32 .. v32}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v34

    move/from16 v41, v3

    const/4 v3, 0x1

    add-int/lit8 v34, v34, -0x1

    move/from16 v3, v34

    :goto_13
    if-ltz v3, :cond_2b

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v42, v7

    move-object/from16 v7, v34

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v43, v13

    move-object/from16 v34, v15

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    move-object v15, v9

    move-wide/from16 v52, v10

    move-wide/from16 v9, v37

    if-eqz v13, :cond_28

    invoke-virtual {v13, v9, v10, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v37

    add-long v29, v29, v37

    :cond_28
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v7, v9, v10, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v58

    cmp-long v11, v58, v25

    if-lez v11, :cond_2a

    if-gez p5, :cond_29

    new-instance v54, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v55, v11

    check-cast v55, Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v56

    move-object/from16 v57, v7

    invoke-direct/range {v54 .. v59}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v7, v54

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-long v39, v39, v58

    :cond_2a
    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v37, v9

    move-object v9, v15

    move-object/from16 v15, v34

    move-object/from16 v7, v42

    move-object/from16 v13, v43

    move-wide/from16 v10, v52

    goto :goto_13

    :cond_2b
    move-object/from16 v42, v7

    move-wide/from16 v52, v10

    move-object/from16 v43, v13

    move-object/from16 v34, v15

    move-object v15, v9

    move-wide/from16 v9, v37

    add-int/lit8 v3, v41, 0x1

    move-object/from16 v1, p1

    move-object v9, v15

    move-object/from16 p1, v34

    move-wide/from16 v10, v52

    goto/16 :goto_12

    :cond_2c
    move-object/from16 v34, p1

    move-object/from16 p1, v1

    move-object/from16 v42, v7

    move-wide/from16 v52, v10

    move-object/from16 v43, v13

    move-object v11, v14

    move/from16 p6, v15

    const/4 v7, 0x0

    move-object v15, v9

    move-wide/from16 v9, v37

    invoke-virtual {v0, v7, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    move-object/from16 v46, v8

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    move-object/from16 v32, v4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v1, 0x3

    move-wide/from16 v37, v7

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    move-wide/from16 v44, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    move-wide/from16 v48, v7

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    move-wide/from16 v50, v7

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    const/4 v1, 0x3

    move-wide/from16 v54, v7

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    const/4 v1, 0x4

    move-wide/from16 v56, v7

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    move-wide/from16 v58, v7

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getMobileActiveTime(JI)J

    move-result-wide v60

    move-wide/from16 v62, v3

    div-long v3, v60, v17

    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getMobileActive5GTime(JI)J

    move-result-wide v60

    move-wide/from16 v64, v7

    div-long v7, v60, v17

    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getSilentLogOnScreenOnTime(JI)J

    move-result-wide v60

    move-wide/from16 v66, v13

    div-long v13, v60, v17

    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getSilentLogOnScreenOffTime(JI)J

    move-result-wide v60

    move-wide/from16 v68, v13

    div-long v13, v60, v17

    cmp-long v1, v29, v25

    if-eqz v1, :cond_2d

    move-object/from16 v1, v32

    move-object/from16 v32, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Total full wakelock time: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v29, v29, v19

    move-wide/from16 v60, v13

    div-long v13, v29, v17

    invoke-static {v1, v13, v14}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :cond_2d
    move-wide/from16 v60, v13

    move-object/from16 v1, v32

    move-object/from16 v32, v11

    :goto_14
    cmp-long v11, v39, v25

    if-eqz v11, :cond_2e

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Total partial wakelock time: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v39, v39, v19

    div-long v13, v39, v17

    invoke-static {v1, v13, v14}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v13

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v11

    cmp-long v29, v13, v25

    if-eqz v29, :cond_2f

    move-wide/from16 v29, v13

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v29, v19

    div-long v13, v13, v17

    invoke-static {v1, v13, v14}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v11

    const/4 v13, 0x1

    move-object/from16 v14, p1

    if-le v11, v13, :cond_34

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v11, :cond_33

    move-object/from16 v39, v15

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  Display "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " Statistics:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v29, v7

    invoke-virtual {v0, v13, v9, v10}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v7

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    Screen on: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v40, v3

    div-long v3, v7, v17

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v15, v46

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p1, v11

    move-wide/from16 v3, v52

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "    Screen brightness levels:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    const/16 v46, 0x0

    :goto_16
    const/4 v5, 0x5

    if-ge v11, v5, :cond_31

    move-wide/from16 v52, v3

    invoke-virtual {v0, v13, v11, v9, v10}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v3

    cmp-long v5, v3, v25

    if-nez v5, :cond_30

    move/from16 v70, v11

    move-object/from16 v5, v23

    move-object/from16 v11, v39

    move-object/from16 v23, v12

    goto :goto_17

    :cond_30
    const-string v5, "\n      "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v70, v11

    move-object/from16 v23, v12

    div-long v11, v3, v17

    invoke-static {v1, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v46, 0x1

    :goto_17
    add-int/lit8 v3, v70, 0x1

    move-object/from16 v39, v11

    move-object/from16 v12, v23

    move v11, v3

    move-object/from16 v23, v5

    move-wide/from16 v3, v52

    goto :goto_16

    :cond_31
    move-wide/from16 v52, v3

    move-object/from16 v5, v23

    move-object/from16 v11, v39

    move-object/from16 v23, v12

    move-object/from16 v7, v31

    if-nez v46, :cond_32

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v9, v10}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v3

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Screen Doze: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v13

    div-long v12, v3, v17

    invoke-static {v1, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v52

    invoke-virtual {v0, v3, v4, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v8, 0x1

    move-object/from16 v23, v5

    move-object/from16 v31, v7

    move-object/from16 v46, v15

    move-wide/from16 v7, v29

    move/from16 v5, p4

    move-object v12, v3

    move v13, v4

    move-object v15, v11

    move-wide/from16 v3, v40

    move/from16 v11, p1

    goto/16 :goto_15

    :cond_33
    move-wide/from16 v40, v3

    move-wide/from16 v29, v7

    move/from16 p1, v11

    move-object v3, v12

    move-object v11, v15

    move-object/from16 v5, v23

    move-object/from16 v7, v31

    move-object/from16 v15, v46

    move-wide/from16 v12, v52

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_34
    move-wide/from16 v40, v3

    move-wide/from16 v29, v7

    move/from16 p1, v11

    move-object v3, v12

    move-object v11, v15

    move-object/from16 v5, v23

    move-object/from16 v7, v31

    move-object/from16 v15, v46

    move-wide/from16 v12, v52

    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Mobile info"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     Mobile active time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v3

    move-wide/from16 v3, v40

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "\n     Mobile active 5G time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v29

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "\n     Silent log on screen on time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v68

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "\n     Silent log on screen off time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v7

    move-wide/from16 v7, v60

    invoke-static {v1, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Logging duration for connectivity statistics: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v27

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Cellular Statistics:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Cellular kernel active time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v0, v9, v10, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v7

    div-long v3, v7, v17

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Cellular"

    move-object v3, v5

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v27, v2

    move-object v2, v1

    move-object/from16 v1, v27

    move-wide/from16 v27, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v14

    move-object v14, v3

    move-object v3, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object v1, v2

    move v8, v6

    move-object v6, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v2, v1

    move-wide/from16 v4, v35

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v3, "     Cellular data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v66

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "     Cellular data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v37

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "     Cellular packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v48

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const-string v3, "     Cellular packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v50

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Cellular Radio Access Technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v3, v5, :cond_39

    move/from16 v29, v4

    invoke-virtual {v0, v3, v9, v10, v8}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v4

    cmp-long v30, v4, v25

    if-nez v30, :cond_35

    move-wide/from16 v37, v9

    move-object/from16 v39, v11

    move/from16 v4, v29

    goto :goto_1c

    :cond_35
    move-object/from16 v39, v11

    const-string v11, "\n       "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v8, v11

    if-ge v3, v8, :cond_36

    aget-object v8, v11, v3

    goto :goto_1a

    :cond_36
    const-string v8, "ERROR"

    :goto_1a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v37, v9

    div-long v8, v4, v17

    invoke-static {v2, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    if-ne v3, v4, :cond_38

    move-wide/from16 v9, v37

    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->getNrNsaTime(J)J

    move-result-wide v4

    cmp-long v8, v4, v25

    if-eqz v8, :cond_37

    const-string v8, "\n         "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "nr_nsa"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v37, v9

    div-long v8, v4, v17

    invoke-static {v2, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_37
    move-wide/from16 v37, v9

    :cond_38
    :goto_1b
    const/4 v4, 0x1

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, p4

    move-wide/from16 v9, v37

    move-object/from16 v11, v39

    goto/16 :goto_19

    :cond_39
    move/from16 v29, v4

    move-wide/from16 v37, v9

    move-object/from16 v39, v11

    move-object/from16 v8, v31

    if-nez v29, :cond_3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "good (-108dBm to -98dBm): "

    const-string v4, "great (greater than -98dBm): "

    const-string/jumbo v5, "very poor (less than -128dBm): "

    const-string/jumbo v9, "poor (-128dBm to -118dBm): "

    const-string/jumbo v10, "moderate (-118dBm to -108dBm): "

    filled-new-array {v5, v9, v10, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1d
    if-ge v5, v4, :cond_3c

    move/from16 v10, p4

    move-object v11, v3

    move/from16 v29, v4

    move-object/from16 v31, v8

    move/from16 v30, v9

    move-wide/from16 v3, v37

    invoke-virtual {v0, v5, v3, v4, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v8

    cmp-long v37, v8, v25

    if-nez v37, :cond_3b

    move-wide/from16 v40, v3

    move/from16 v37, v5

    move/from16 v9, v30

    goto :goto_1e

    :cond_3b
    move/from16 v37, v5

    const-string v5, "\n       "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v11, v37

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v40, v3

    div-long v3, v8, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :goto_1e
    add-int/lit8 v5, v37, 0x1

    move-object v3, v11

    move/from16 v4, v29

    move-object/from16 v8, v31

    move-wide/from16 v37, v40

    goto :goto_1d

    :cond_3c
    move/from16 v10, p4

    move-object/from16 v31, v8

    move/from16 v30, v9

    move-wide/from16 v40, v37

    if-nez v30, :cond_3d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Wifi Statistics:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Wifi kernel active time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v40

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v5

    move-wide/from16 v37, v3

    div-long v3, v5, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "WiFi"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v3, p3

    move v6, v10

    move-wide/from16 v71, v35

    move-wide/from16 v9, v37

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move v5, v6

    move-object v6, v3

    const-string v3, "     Wifi data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v62

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "     Wifi data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v44

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "     Wifi packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v54

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const-string v3, "     Wifi packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v56

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Wifi states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v29, 0x0

    :goto_1f
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3f

    move-object/from16 v30, v7

    invoke-virtual {v0, v3, v9, v10, v5}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v6

    cmp-long v4, v6, v25

    if-nez v4, :cond_3e

    move/from16 v31, v3

    move-object/from16 v7, v30

    goto :goto_20

    :cond_3e
    const-string v4, "\n       "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v31, v3

    div-long v3, v6, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v29, 0x1

    :goto_20
    add-int/lit8 v3, v31, 0x1

    move-object/from16 v6, p3

    goto :goto_1f

    :cond_3f
    if-nez v29, :cond_40

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Wifi supplicant states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v29, 0x0

    :goto_21
    const/16 v4, 0xd

    if-ge v3, v4, :cond_42

    move-object/from16 v30, v7

    invoke-virtual {v0, v3, v9, v10, v5}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v6

    cmp-long v4, v6, v25

    if-nez v4, :cond_41

    move/from16 v31, v3

    move-object/from16 v7, v30

    goto :goto_22

    :cond_41
    const-string v4, "\n       "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v31, v3

    div-long v3, v6, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v29, 0x1

    :goto_22
    add-int/lit8 v3, v31, 0x1

    move-object/from16 v6, p3

    goto :goto_21

    :cond_42
    if-nez v29, :cond_43

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "good (-66.25dBm to -55dBm): "

    const-string v4, "great (greater than -55dBm): "

    move-object/from16 v31, v14

    const-string/jumbo v14, "very poor (less than -88.75dBm): "

    move-object/from16 v39, v11

    const-string/jumbo v11, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v1, "moderate (-77.5dBm to -66.25dBm): "

    filled-new-array {v14, v11, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_23
    if-ge v3, v4, :cond_45

    move-object/from16 v30, v7

    move-object v14, v8

    invoke-virtual {v0, v3, v9, v10, v5}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v7

    cmp-long v29, v7, v25

    if-nez v29, :cond_44

    move-object/from16 v29, v1

    move/from16 v35, v3

    move v1, v4

    move v3, v11

    move-object/from16 v7, v30

    move-object/from16 v11, v42

    goto :goto_24

    :cond_44
    move-object/from16 v11, v42

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v1

    const-string v1, "     "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v29, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v35, v3

    move v1, v4

    div-long v3, v7, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_24
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v42, v11

    move-object v8, v14

    move v11, v3

    move v3, v4

    move v4, v1

    move-object/from16 v1, v29

    goto :goto_23

    :cond_45
    move-object v14, v8

    move-object/from16 v8, v42

    if-nez v11, :cond_46

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  GPS Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "poor (less than 20 dBHz): "

    const-string v4, "good (greater than 20 dBHz): "

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v4, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v11, :cond_47

    move-wide/from16 v52, v12

    move v13, v11

    invoke-virtual {v0, v4, v9, v10, v5}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v11

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v1

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v29, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v13

    move-object/from16 v30, v14

    div-long v13, v11, v17

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v52

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v11, v1

    move-wide v12, v13

    move-object/from16 v1, v29

    move-object/from16 v14, v30

    goto :goto_25

    :cond_47
    move-object/from16 v30, v14

    move-wide v13, v12

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v11

    cmp-long v1, v11, v25

    if-lez v1, :cond_48

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     GPS Battery Drain: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v11, v11

    const-wide v35, 0x414b774000000000L    # 3600000.0

    div-double v11, v11, v35

    invoke-virtual {v1, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAh"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getScreenOnGpsRunningTime(JI)J

    move-result-wide v11

    cmp-long v1, v11, v25

    if-lez v1, :cond_49

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "     GPS run time while screen on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v11, v11, v17

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :cond_49
    const/4 v1, 0x0

    :goto_26
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v1, v23

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Bluetooth total received: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v11, v58

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ", sent: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v11, v64

    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10, v5}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v11

    div-long v11, v11, v17

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Bluetooth scan time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Bluetooth"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v1, v3

    move-object v3, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object v11, v0

    move-object v12, v1

    move-object v1, v2

    move-object v0, v3

    move v5, v6

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Speaker Statistics:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    const/16 v4, 0x10

    const-string v6, ": "

    if-ge v2, v4, :cond_4b

    move/from16 v23, v3

    invoke-virtual {v11, v2, v5}, Landroid/os/BatteryStats;->getSpeakerMediaTime(II)J

    move-result-wide v3

    cmp-long v29, v3, v25

    if-nez v29, :cond_4a

    move-wide/from16 v37, v9

    move/from16 v3, v23

    goto :goto_28

    :cond_4a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v37, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "level(media) "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const/4 v3, 0x1

    :goto_28
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, v37

    goto :goto_27

    :cond_4b
    move/from16 v23, v3

    move-wide/from16 v37, v9

    const/4 v2, 0x0

    :goto_29
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4d

    invoke-virtual {v11, v2, v5}, Landroid/os/BatteryStats;->getSpeakerCallTime(II)J

    move-result-wide v3

    cmp-long v9, v3, v25

    if-nez v9, :cond_4c

    goto :goto_2a

    :cond_4c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "level(call) "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const/16 v23, 0x1

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4d
    if-nez v23, :cond_4e

    move-object/from16 v8, v30

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Device battery use since last full charge"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged (lower bound): "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged (upper bound): "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged while screen on: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged while screen off: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged while screen doze: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while screen on: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while screen off: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while screen doze: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    if-lez v33, :cond_4f

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while sub screen on: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOnSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while sub screen doze: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenDozeSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_4f
    add-long v2, v68, v60

    cmp-long v2, v2, v25

    if-lez v2, :cond_50

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while screen on with silent log on: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountSilentOnScreenOnSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Amount discharged permil while screen off with silent log on: "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getDischargeAmountSilentOnScreenOffSinceChargePermil()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_50
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v2, p7

    const/4 v3, 0x1

    invoke-interface {v2, v11, v3}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v2

    invoke-virtual {v2, v12, v0}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_52

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Per-app mobile ms per packet:"

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v8, v25

    const/4 v3, 0x0

    :goto_2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    Uid "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p7, v2

    move v10, v3

    iget-wide v2, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v29, v2

    iget-wide v2, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long v2, v29, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " packets over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v43

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-wide v3, v4, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v8, v3

    add-int/lit8 v3, v10, 0x1

    move-object/from16 v2, p7

    goto :goto_2b

    :cond_51
    move-object/from16 v2, v43

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    TOTAL TIME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v39

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_2c

    :cond_52
    move-object/from16 v8, v39

    move-object/from16 v2, v43

    :goto_2c
    new-instance v9, Landroid/os/BatteryStats$1;

    invoke-direct {v9, v11}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    if-gez p5, :cond_5d

    invoke-virtual {v11}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_58

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v29, v2

    move-object/from16 v2, v23

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-object/from16 p7, v3

    move-object/from16 v23, v4

    move-wide/from16 v3, v37

    invoke-static {v2, v3, v4, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v43

    cmp-long v30, v43, v25

    if-lez v30, :cond_53

    new-instance v39, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v40, v23

    check-cast v40, Ljava/lang/String;

    const/16 v41, 0x0

    move-object/from16 v42, v2

    invoke-direct/range {v39 .. v44}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v2, v39

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    move-wide/from16 v37, v3

    move-object/from16 v2, v29

    move-object/from16 v3, p7

    goto :goto_2d

    :cond_54
    move-object/from16 v29, v2

    move-wide/from16 v3, v37

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All kernel wake locks:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2e
    move-wide/from16 v37, v3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Kernel Wake lock "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    move-object/from16 v23, v6

    const-string v6, ": "

    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move-object/from16 p7, v10

    move-object/from16 v8, v23

    move-object/from16 v10, v29

    move-object v7, v0

    move-object v0, v1

    move/from16 v23, v2

    move-object v1, v3

    move-wide/from16 v2, v37

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-wide v3, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, " realtime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_55
    add-int/lit8 v2, v23, 0x1

    move/from16 v5, p4

    move-object v1, v0

    move-object v0, v7

    move-object v6, v8

    move-object/from16 v29, v10

    move-object/from16 v7, v30

    move-object/from16 v8, v39

    move-object/from16 v10, p7

    goto :goto_2e

    :cond_56
    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move-object/from16 v10, v29

    move-wide/from16 v3, v37

    move-object v7, v0

    move-object v0, v1

    move-object v8, v6

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_30

    :cond_57
    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move-object/from16 v10, v29

    goto :goto_2f

    :cond_58
    move-object v10, v2

    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move-wide/from16 v3, v37

    :goto_2f
    move-object v7, v0

    move-object v0, v1

    move-object v8, v6

    :goto_30
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5a

    move-object/from16 v1, v32

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All partial wake locks:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_59

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$TimerEntry;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "  Wake lock "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    move-object/from16 v6, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v32, v1

    iget-object v1, v5, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-wide/from16 v37, v3

    const/4 v4, 0x0

    const-string v6, ": "

    move/from16 v5, p4

    move/from16 v23, v2

    move-object/from16 v73, v31

    move-wide/from16 v2, v37

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object v1, v0

    move-wide v3, v2

    const-string v0, " realtime"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v23, 0x1

    move-object v0, v1

    move-object/from16 v1, v32

    goto :goto_31

    :cond_59
    move/from16 v5, p4

    move-object/from16 v32, v1

    move-object/from16 v73, v31

    move-object v1, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_32

    :cond_5a
    move/from16 v5, p4

    move-object v1, v0

    move-object/from16 v73, v31

    :goto_32
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5e

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All wakeup reasons:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p7, v0

    move-object/from16 v0, v23

    check-cast v0, Landroid/os/BatteryStats$Timer;

    new-instance v40, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v41, v6

    check-cast v41, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    move-wide/from16 v37, v3

    int-to-long v3, v6

    const/16 v42, 0x0

    move-object/from16 v43, v0

    move-wide/from16 v44, v3

    invoke-direct/range {v40 .. v45}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p7

    move-wide/from16 v3, v37

    goto :goto_33

    :cond_5b
    move-wide/from16 v37, v3

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v9, 0x0

    :goto_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_5c

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Wakeup reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v6, ": "

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v23, v2

    move-wide/from16 v2, v37

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object v1, v0

    move-wide v3, v2

    const-string v0, " realtime"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v37, v3

    move-object/from16 v2, v23

    goto :goto_34

    :cond_5c
    move-wide/from16 v3, v37

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_35

    :cond_5d
    move-object v10, v2

    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move-object/from16 v73, v31

    move-wide/from16 v3, v37

    move-object v7, v0

    move-object v8, v6

    :cond_5e
    :goto_35
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getScreenWakeStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_60

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All screen wake reasons:"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v9, "  "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_36

    :cond_5f
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    :cond_60
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_62

    const-string v2, "  Memory Stats"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_61

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "  Bandwidth "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Time "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p3

    goto :goto_37

    :cond_61
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    :cond_62
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_64

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Resource Power Manager Stats"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_63

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-object/from16 v6, p3

    move-object/from16 v23, v8

    move-object/from16 p7, v9

    move-object v0, v12

    move-wide/from16 v8, v27

    move-object/from16 v12, v30

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-wide v2, v3

    move-wide v3, v2

    move-object/from16 v8, v23

    move-object/from16 v9, p7

    move-object v12, v1

    move-object v1, v0

    goto :goto_38

    :cond_63
    move-object v0, v1

    move-wide v2, v3

    move-object/from16 v23, v8

    move-object v1, v12

    move-wide/from16 v8, v27

    move-object/from16 v12, v30

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_39

    :cond_64
    move-object v0, v1

    move-wide v2, v3

    move-object/from16 v23, v8

    move-object v1, v12

    move-wide/from16 v8, v27

    move-object/from16 v12, v30

    :goto_39
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v4

    const-string v6, "\n"

    if-eqz v4, :cond_67

    move-wide/from16 v52, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "  CPU scaling: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v13

    array-length v14, v13

    move-object/from16 p7, v13

    const/4 v13, 0x0

    const/16 v27, 0x0

    :goto_3a
    if-ge v13, v14, :cond_66

    move/from16 v28, v13

    aget v13, p7, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v29, v14

    const-string v14, "    policy"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0x3a

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v13

    array-length v14, v13

    move-object/from16 v30, v4

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v14, :cond_65

    move/from16 v31, v4

    aget v4, v13, v31

    move-object/from16 v32, v13

    const/16 v13, 0x20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v4, v31, 0x1

    move-object/from16 v13, v32

    goto :goto_3b

    :cond_65
    add-int/lit8 v13, v28, 0x1

    move/from16 v14, v29

    move-object/from16 v4, v30

    goto :goto_3a

    :cond_66
    move-object/from16 v30, v4

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    move/from16 v13, v27

    goto :goto_3c

    :cond_67
    move-object/from16 v30, v4

    move-wide/from16 v52, v13

    const/4 v13, 0x0

    :goto_3c
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getKernelCpuSpeedTimes()[[J

    move-result-object v4

    if-eqz v4, :cond_6b

    array-length v14, v4

    if-lez v14, :cond_6b

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v14, "  CPU times (time_in_state): "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v27, v13

    const/4 v14, 0x0

    :goto_3d
    array-length v13, v4

    if-ge v14, v13, :cond_6a

    if-eqz v30, :cond_68

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v13

    array-length v13, v13

    const/16 v47, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v28

    aget v13, v28, v13

    goto :goto_3e

    :cond_68
    move v13, v14

    :goto_3e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p7, v4

    const-string v4, "    policy"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_3f
    aget-object v13, p7, v14

    array-length v13, v13

    if-ge v4, v13, :cond_69

    const/16 v13, 0x20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v13, p7, v14

    move/from16 v28, v14

    aget-wide v13, v13, v4

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v28

    goto :goto_3f

    :cond_69
    move/from16 v28, v14

    add-int/lit8 v14, v28, 0x1

    move-object/from16 v4, p7

    goto :goto_3d

    :cond_6a
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_40

    :cond_6b
    move/from16 v27, v13

    :goto_40
    invoke-virtual {v11}, Landroid/os/BatteryStats;->getScreenOffKernelCpuSpeedTimes()[[J

    move-result-object v4

    if-eqz v4, :cond_6f

    array-length v13, v4

    if-lez v13, :cond_6f

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v13, "  Screen off CPU times (time_in_state): "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_41
    array-length v14, v4

    if-ge v13, v14, :cond_6e

    if-eqz v30, :cond_6c

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v14

    array-length v14, v14

    const/16 v47, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v14

    aget v14, v14, v13

    goto :goto_42

    :cond_6c
    move v14, v13

    :goto_42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p7, v4

    const-string v4, "    policy"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_43
    aget-object v14, p7, v13

    array-length v14, v14

    if-ge v4, v14, :cond_6d

    const/16 v14, 0x20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v14, p7, v13

    move/from16 v28, v13

    aget-wide v13, v14, v4

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v28

    goto :goto_43

    :cond_6d
    move/from16 v28, v13

    add-int/lit8 v13, v28, 0x1

    move-object/from16 v4, p7

    goto :goto_41

    :cond_6e
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_6f
    move/from16 v14, p6

    const/4 v13, 0x0

    :goto_44
    if-ge v13, v14, :cond_f0

    move-object/from16 p6, v6

    move-object/from16 v4, v34

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move/from16 v28, v14

    if-ltz p5, :cond_70

    move/from16 v14, p5

    if-eq v6, v14, :cond_70

    const/16 v14, 0x3e8

    if-eq v6, v14, :cond_70

    move-object/from16 v6, p3

    move-wide/from16 v58, v2

    move-object/from16 v34, v4

    move-wide/from16 v56, v8

    move-object/from16 v32, v10

    move-object/from16 v29, v12

    move/from16 v31, v13

    move-object/from16 v46, v15

    move-wide/from16 v13, v21

    move-object/from16 v8, v23

    move/from16 v33, v27

    const/16 v24, 0x5

    const/16 v47, 0x1

    move/from16 v27, p1

    move-object v12, v1

    move v10, v5

    goto/16 :goto_91

    :cond_70
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v34, v4

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v29, v12

    move/from16 v31, v13

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    move-wide/from16 v32, v8

    const/4 v6, 0x1

    invoke-virtual {v14, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v35, v8

    const/4 v6, 0x2

    invoke-virtual {v14, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    const/4 v9, 0x3

    move-wide/from16 v37, v7

    invoke-virtual {v14, v9, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    const/4 v8, 0x4

    invoke-virtual {v14, v8, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    const/4 v7, 0x5

    invoke-virtual {v14, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v44, v8

    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    move-object/from16 v46, v10

    const/4 v6, 0x1

    invoke-virtual {v14, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v48, v9

    const/4 v4, 0x2

    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    const/4 v4, 0x3

    move-wide/from16 v50, v9

    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v54, v9

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v9

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v4

    move-wide/from16 v56, v9

    invoke-virtual {v14, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v9

    move-wide/from16 v58, v9

    invoke-virtual {v14, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v9

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v6

    move-wide/from16 v60, v9

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v9

    move/from16 p7, v9

    invoke-virtual {v14, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v9

    move-wide/from16 v62, v9

    invoke-virtual {v14, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v9

    move-wide/from16 v64, v9

    invoke-virtual {v14, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v9

    move-wide/from16 v66, v2

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v2

    move-wide/from16 v68, v9

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v9

    cmp-long v70, v12, v25

    if-gtz v70, :cond_72

    cmp-long v70, v35, v25

    if-gtz v70, :cond_72

    cmp-long v70, v7, v25

    if-gtz v70, :cond_72

    cmp-long v70, v48, v25

    if-lez v70, :cond_71

    goto :goto_45

    :cond_71
    move-wide/from16 v12, v48

    goto :goto_46

    :cond_72
    :goto_45
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Mobile network: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v12, v35

    invoke-virtual {v11, v12, v13}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " sent (packets "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v12, v48

    invoke-virtual {v1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " sent)"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_46
    cmp-long v5, v56, v25

    if-gtz v5, :cond_74

    if-lez v4, :cond_73

    goto :goto_47

    :cond_73
    move-object/from16 v5, p3

    move/from16 v35, v6

    move-object/from16 v8, v29

    move-wide/from16 v56, v32

    move-wide/from16 v32, v9

    move-object/from16 v10, v46

    goto :goto_48

    :cond_74
    :goto_47
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v35, v6

    const-string v6, "    Mobile radio active: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v48, v7

    div-long v6, v56, v17

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v74, v12

    move-wide/from16 v12, v32

    move-wide/from16 v32, v9

    move-wide/from16 v8, v56

    invoke-virtual {v11, v8, v9, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v46

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v48, v48, v74

    cmp-long v4, v48, v25

    if-nez v4, :cond_75

    const-wide/16 v48, 0x1

    :cond_75
    move-wide/from16 v56, v12

    move-wide/from16 v11, v48

    const-string v4, " @ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v6, v6

    long-to-double v11, v11

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mspp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_48
    cmp-long v4, v2, v25

    if-lez v4, :cond_76

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Mobile radio AP wakeups: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cellular"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v7, p3

    move/from16 v6, p4

    move-object/from16 v76, p6

    move-object v2, v0

    move-object/from16 p6, v14

    move/from16 v9, v35

    move-wide/from16 v13, v40

    move-wide/from16 v11, v66

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v3, v37, v25

    if-gtz v3, :cond_77

    cmp-long v3, v13, v25

    if-gtz v3, :cond_77

    cmp-long v3, v50, v25

    if-gtz v3, :cond_77

    cmp-long v3, v54, v25

    if-lez v3, :cond_78

    :cond_77
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Wi-Fi network: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v37

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " sent (packets "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v50

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v54

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, " sent)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_78
    cmp-long v3, v58, v25

    if-nez v3, :cond_7a

    cmp-long v3, v60, v25

    if-nez v3, :cond_7a

    if-nez v9, :cond_7a

    if-nez p7, :cond_7a

    cmp-long v3, v62, v25

    if-nez v3, :cond_7a

    cmp-long v3, v64, v25

    if-nez v3, :cond_7a

    cmp-long v3, v68, v25

    if-eqz v3, :cond_79

    goto :goto_49

    :cond_79
    const/4 v3, 0x0

    goto/16 :goto_4a

    :cond_7a
    :goto_49
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v68, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v52

    move-wide/from16 v3, v68

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Full Wifi Lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v58, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v58

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Scan (blamed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v60, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v60

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Scan (actual): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v62, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v12, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    move-wide/from16 v13, v62

    invoke-virtual {v0, v13, v14, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Background Wifi Scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v64, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v12, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    move-wide/from16 v13, v64

    invoke-virtual {v0, v13, v14, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4a
    cmp-long v4, v32, v25

    if-lez v4, :cond_7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    WiFi AP wakeups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v32

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WiFi"

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object v9, v0

    move-object v13, v1

    move-object v1, v2

    move v5, v6

    cmp-long v0, v42, v25

    if-gtz v0, :cond_7c

    cmp-long v0, v44, v25

    if-lez v0, :cond_7d

    :cond_7c
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v42

    invoke-virtual {v9, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v44

    invoke-virtual {v9, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7d
    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-string v14, " times)"

    if-eqz v0, :cond_92

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    add-long v2, v2, v19

    div-long v2, v2, v17

    cmp-long v4, v2, v25

    if-eqz v4, :cond_92

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_7e

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v29

    move/from16 v32, v29

    move-object/from16 v29, v8

    move/from16 v8, v32

    goto :goto_4b

    :cond_7e
    move-object/from16 v29, v8

    const/4 v8, 0x0

    :goto_4b
    move-object/from16 v32, v10

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothDutyScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_7f

    invoke-virtual {v10, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v35

    add-long v35, v35, v19

    div-long v35, v35, v17

    move-object/from16 p7, v10

    move-wide/from16 v37, v11

    move-wide/from16 v10, v35

    goto :goto_4c

    :cond_7f
    move-object/from16 p7, v10

    move-wide/from16 v37, v11

    move-wide/from16 v10, v25

    :goto_4c
    move/from16 v33, v8

    move-wide/from16 v12, v71

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v8

    if-eqz v6, :cond_80

    invoke-virtual {v6, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v35

    move-wide/from16 v77, v35

    goto :goto_4d

    :cond_80
    move-wide/from16 v77, v25

    :goto_4d
    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v35

    if-eqz v35, :cond_81

    move-object/from16 v35, v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_4e

    :cond_81
    move-object/from16 v35, v0

    const/4 v0, 0x0

    :goto_4e
    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v36

    if-eqz v36, :cond_82

    move-object/from16 v36, v6

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_4f

    :cond_82
    move-object/from16 v36, v6

    const/4 v6, 0x0

    :goto_4f
    move-object/from16 v46, v15

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_83

    invoke-virtual {v15, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v40

    move-wide/from16 v79, v40

    goto :goto_50

    :cond_83
    move-wide/from16 v79, v25

    :goto_50
    if-eqz v15, :cond_84

    invoke-virtual {v15, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v40

    move-wide/from16 v81, v40

    goto :goto_51

    :cond_84
    move-wide/from16 v81, v25

    :goto_51
    move-object/from16 v40, v15

    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_85

    invoke-virtual {v15, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v41

    move-wide/from16 v83, v41

    goto :goto_52

    :cond_85
    move-wide/from16 v83, v25

    :goto_52
    if-eqz v15, :cond_86

    invoke-virtual {v15, v12, v13}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v41

    move-wide/from16 v71, v12

    move-wide/from16 v12, v41

    goto :goto_53

    :cond_86
    move-wide/from16 v71, v12

    move-wide/from16 v12, v25

    :goto_53
    move-object/from16 v41, v15

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    Bluetooth Duty Scan (total actual realtime with duty): "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p7, :cond_87

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v10

    if-eqz v10, :cond_87

    const-string v10, " (currently running)"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    move-object/from16 v10, v76

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v11, v8, v2

    if-eqz v11, :cond_89

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_88

    const-string v2, " (currently running)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string v2, " (currently running)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8a
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v77

    cmp-long v4, v2, v25

    if-gtz v4, :cond_8b

    if-lez v33, :cond_8d

    :cond_8b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v36, :cond_8c

    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, " (currently running in background)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Bluetooth Scan Results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in background)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v79

    cmp-long v0, v2, v25

    move-wide/from16 v8, v83

    if-gtz v0, :cond_8f

    cmp-long v0, v8, v25

    if-lez v0, :cond_8e

    goto :goto_54

    :cond_8e
    move-object/from16 v11, v39

    goto :goto_55

    :cond_8f
    :goto_54
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v81

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v11, v39

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v40, :cond_90

    invoke-virtual/range {v40 .. v40}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, " (currently running unoptimized)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    if-eqz v41, :cond_91

    cmp-long v0, v8, v25

    if-lez v0, :cond_91

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    :goto_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_56

    :cond_92
    move-object/from16 v29, v8

    move-object/from16 v32, v10

    move-wide/from16 v37, v11

    move-object v12, v13

    move-object/from16 v46, v15

    move-object/from16 v11, v39

    move-object/from16 v10, v76

    const/4 v0, 0x0

    :goto_56
    invoke-virtual/range {p6 .. p6}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v2

    const-string v8, ", "

    if-eqz v2, :cond_96

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_57
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v2, v4, :cond_95

    move-object/from16 v9, p6

    invoke-virtual {v9, v2, v5}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    if-eqz v4, :cond_94

    if-nez v3, :cond_93

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "    User activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_58

    :cond_93
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v73

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_94
    move-object/from16 v13, v73

    :goto_59
    add-int/lit8 v2, v2, 0x1

    move-object/from16 p6, v9

    move-object/from16 v73, v13

    goto :goto_57

    :cond_95
    move-object/from16 v9, p6

    move-object/from16 v13, v73

    if-eqz v3, :cond_97

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a

    :cond_96
    move-object/from16 v9, p6

    move-object/from16 v13, v73

    :cond_97
    :goto_5a
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v47, 0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    move v0, v2

    move-object/from16 p6, v10

    move-object/from16 v39, v11

    move-object/from16 v73, v13

    move-object/from16 p7, v14

    move-wide/from16 v10, v25

    move-wide v13, v10

    move-wide/from16 v35, v13

    move-wide/from16 v40, v35

    const/4 v2, 0x0

    :goto_5b
    if-ltz v0, :cond_99

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Wake lock "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v0

    move-object v0, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move v6, v4

    const-string v4, "full"

    move/from16 v33, v6

    const-string v6, ": "

    move-wide/from16 v42, v13

    move/from16 v13, v33

    move/from16 v33, v16

    move-object/from16 v85, v15

    move v15, v2

    move-object/from16 v86, v9

    move-object v9, v3

    move-wide/from16 v2, v37

    move-object/from16 v38, v86

    move-object/from16 v37, v85

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-wide v3, v2

    invoke-virtual {v9, v13}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide v2, v3

    const-string/jumbo v4, "partial"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    move-wide v3, v2

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_5c

    :cond_98
    const/4 v0, 0x0

    :goto_5c
    move-wide v2, v3

    const-string v4, "background partial"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-wide v3, v2

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move-wide v13, v3

    const-string/jumbo v4, "window"

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v13

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-wide v3, v2

    const/16 v0, 0x12

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide v2, v3

    const-string v4, "draw"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object v1, v0

    move-wide v13, v2

    const-string v0, " realtime"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v15, 0x1

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v3

    add-long/2addr v10, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v3

    add-long v35, v35, v3

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v3

    add-long v40, v40, v3

    const/16 v0, 0x12

    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-static {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v3

    add-long v3, v42, v3

    add-int/lit8 v0, v33, -0x1

    move-object/from16 v15, v37

    move-object/from16 v9, v38

    move-wide/from16 v37, v13

    move-wide v13, v3

    const/4 v3, 0x1

    goto/16 :goto_5b

    :cond_99
    move v15, v2

    move-wide/from16 v42, v13

    move-wide/from16 v13, v37

    const/4 v6, 0x1

    move-object/from16 v38, v9

    if-le v15, v6, :cond_a8

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move v4, v3

    move-wide/from16 v2, v71

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v44

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v48

    goto :goto_5d

    :cond_9a
    move-wide/from16 v48, v25

    :goto_5d
    move-wide/from16 v71, v2

    move v0, v4

    move-wide/from16 v2, v44

    move-wide/from16 v4, v48

    goto :goto_5e

    :cond_9b
    move v0, v3

    move-wide/from16 v2, v25

    move-wide v4, v2

    :goto_5e
    cmp-long v6, v2, v25

    if-nez v6, :cond_9c

    cmp-long v9, v4, v25

    if-nez v9, :cond_9c

    cmp-long v9, v10, v25

    if-nez v9, :cond_9c

    cmp-long v9, v35, v25

    if-nez v9, :cond_9c

    cmp-long v9, v40, v25

    if-eqz v9, :cond_a9

    :cond_9c
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    TOTAL wake: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v9, v10, v25

    if-eqz v9, :cond_9d

    invoke-static {v1, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "full"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    goto :goto_5f

    :cond_9d
    const/4 v9, 0x0

    :goto_5f
    cmp-long v10, v35, v25

    if-eqz v10, :cond_9f

    if-eqz v9, :cond_9e

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9e
    move-wide/from16 v9, v35

    invoke-static {v1, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "blamed partial"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :cond_9f
    if-eqz v6, :cond_a1

    if-eqz v9, :cond_a0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "actual partial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :cond_a1
    cmp-long v2, v4, v25

    if-eqz v2, :cond_a3

    if-eqz v9, :cond_a2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a2
    invoke-static {v1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "actual background partial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :cond_a3
    cmp-long v2, v40, v25

    if-eqz v2, :cond_a5

    if-eqz v9, :cond_a4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a4
    move-wide/from16 v2, v40

    invoke-static {v1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :cond_a5
    cmp-long v2, v42, v25

    if-eqz v2, :cond_a7

    if-eqz v9, :cond_a6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    move-wide/from16 v3, v42

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "draw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a7
    const-string v2, " realtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    :cond_a8
    move v0, v3

    :cond_a9
    :goto_60
    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move/from16 v5, p4

    if-eqz v2, :cond_aa

    invoke-virtual {v2, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    cmp-long v6, v3, v25

    if-lez v6, :cond_aa

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    WiFi Multicast Wakelock"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v3, v3, v19

    div-long v3, v3, v17

    invoke-static {v1, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_aa
    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v47, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_61
    if-ltz v3, :cond_af

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v9, v9, v19

    div-long v9, v9, v17

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_ab

    move-wide/from16 v4, v71

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v35

    goto :goto_62

    :cond_ab
    move-wide/from16 v4, v71

    const-wide/16 v35, -0x1

    :goto_62
    move-wide/from16 v11, v35

    move/from16 v15, p4

    if-eqz v0, :cond_ac

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    goto :goto_63

    :cond_ac
    const/4 v0, -0x1

    :goto_63
    move-wide/from16 v35, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Sync "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v9, v25

    if-eqz v5, :cond_ad

    invoke-static {v1, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v11, v25

    if-lez v5, :cond_ae

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "background ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    :cond_ad
    move-object/from16 v9, p7

    const-string v0, "(not used)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    :goto_64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v23, v4

    move-object/from16 p7, v9

    move v5, v15

    move-wide/from16 v71, v35

    const/4 v0, 0x1

    goto/16 :goto_61

    :cond_af
    move-object/from16 v9, p7

    move v15, v5

    move-object/from16 v4, v23

    move-wide/from16 v35, v71

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v47, 0x1

    add-int/lit8 v3, v3, -0x1

    move v10, v0

    :goto_65
    if-ltz v3, :cond_b4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v5, v5, v19

    div-long v5, v5, v17

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_b0

    move-wide/from16 v58, v13

    move-wide/from16 v13, v35

    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v35

    goto :goto_66

    :cond_b0
    move-wide/from16 v58, v13

    move-wide/from16 v13, v35

    const-wide/16 v35, -0x1

    :goto_66
    move-wide/from16 v71, v13

    move-wide/from16 v13, v35

    if-eqz v0, :cond_b1

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    goto :goto_67

    :cond_b1
    const/4 v0, -0x1

    :goto_67
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Job "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v11, v5, v25

    if-eqz v11, :cond_b2

    invoke-static {v1, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v13, v25

    if-lez v5, :cond_b3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "background ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_b2
    const-string v0, "(not used)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b3
    :goto_68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v13, v58

    move-wide/from16 v35, v71

    const/4 v10, 0x1

    goto/16 :goto_65

    :cond_b4
    move-wide/from16 v58, v13

    move-wide/from16 v71, v35

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v47, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_69
    if-ltz v2, :cond_b7

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_b6

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Job Completions "

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_6a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_b5

    move-object/from16 v14, v73

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v11, v46

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, "x)"

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_b5
    move-object/from16 v11, v46

    move-object/from16 v14, v73

    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_6b

    :cond_b6
    move-object/from16 v11, v46

    move-object/from16 v14, v73

    :goto_6b
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v46, v11

    move-object/from16 v73, v14

    goto :goto_69

    :cond_b7
    move-object/from16 v13, v38

    move-object/from16 v11, v46

    move-object/from16 v14, v73

    invoke-virtual {v13, v1, v15}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b8

    const-string v0, "    Jobs deferred on launch "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b8
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Flashlight"

    move-object/from16 v6, p3

    move/from16 p7, v10

    move-object/from16 v46, v11

    move-object v0, v12

    move v5, v15

    move-wide/from16 v10, v71

    const/16 v24, 0x5

    move-object v12, v4

    move-wide/from16 v3, v58

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int v15, p7, v2

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Camera"

    move-object/from16 v0, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v15, v2

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Video"

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v15, v2

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Audio"

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v85, v1

    move-object v1, v0

    move-object/from16 v0, v85

    or-int/2addr v2, v15

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    move/from16 v23, v2

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v15, :cond_c2

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move/from16 v33, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v2

    const/16 v6, -0x2710

    if-ne v2, v6, :cond_b9

    const-string v2, "GPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_b9
    const/16 v6, -0x2711

    if-ne v2, v6, :cond_ba

    const-string v2, "actualGPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_ba
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v35

    add-long v35, v35, v19

    move-wide/from16 v37, v3

    div-long v3, v35, v17

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    move-object/from16 p7, v7

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_bb

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v23

    move/from16 v5, v23

    goto :goto_6e

    :cond_bb
    const/4 v5, 0x0

    :goto_6e
    move-object/from16 v73, v14

    move/from16 v35, v15

    invoke-virtual {v2, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    if-eqz v7, :cond_bc

    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v40

    move-wide/from16 v71, v10

    move-wide/from16 v10, v40

    goto :goto_6f

    :cond_bc
    move-wide/from16 v71, v10

    move-wide/from16 v10, v25

    :goto_6f
    cmp-long v2, v3, v25

    if-eqz v2, :cond_bf

    cmp-long v2, v14, v3

    if-eqz v2, :cond_bd

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "blamed realtime, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bd
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v10, v25

    if-nez v2, :cond_be

    if-lez v5, :cond_c1

    :cond_be
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "background ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_bf
    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_c0
    move-wide/from16 v37, v3

    move-object/from16 p7, v7

    move-wide/from16 v71, v10

    move-object/from16 v73, v14

    move/from16 v35, v15

    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c1
    :goto_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v33, 0x1

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v7, p7

    move/from16 v15, v35

    move-wide/from16 v3, v37

    move-wide/from16 v10, v71

    move-object/from16 v14, v73

    const/16 v23, 0x1

    goto/16 :goto_6c

    :cond_c2
    move-wide/from16 v37, v3

    move-wide/from16 v71, v10

    move-object/from16 v73, v14

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Vibrator"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-wide/from16 v3, v37

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int v9, v23, v2

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground activities"

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v9, v2

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground services"

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v85, v1

    move-object v1, v0

    move-object/from16 v0, v85

    or-int/2addr v2, v9

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->hasSpeakerActivity()Z

    move-result v7

    if-eqz v7, :cond_c5

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Total speaker time per level:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_71
    const/16 v10, 0x10

    if-ge v7, v10, :cond_c4

    invoke-virtual {v13, v7, v5}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    move-result-wide v10

    div-long v10, v10, v17

    cmp-long v14, v10, v25

    if-nez v14, :cond_c3

    move-object/from16 v14, v73

    goto :goto_72

    :cond_c3
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v14, v73

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :goto_72
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v73, v14

    goto :goto_71

    :cond_c4
    move-object/from16 v14, v73

    if-eqz v9, :cond_c6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    :cond_c5
    move-object/from16 v14, v73

    :cond_c6
    :goto_73
    move-wide/from16 v9, v25

    const/4 v7, 0x0

    :goto_74
    const/4 v11, 0x7

    if-ge v7, v11, :cond_ca

    invoke-virtual {v13, v7, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v35

    cmp-long v11, v35, v25

    if-lez v11, :cond_c9

    add-long v9, v9, v35

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v35, v35, v19

    move-wide/from16 v37, v9

    div-long v9, v35, v17

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v11, p1

    if-nez v7, :cond_c8

    const/4 v15, 0x1

    if-le v11, v15, :cond_c8

    const/4 v2, 0x0

    :goto_75
    if-ge v2, v11, :cond_c8

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getDisplayTopActivityTime(IJI)J

    move-result-wide v9

    cmp-long v15, v9, v25

    if-lez v15, :cond_c7

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    move-wide/from16 v58, v3

    const-string v3, "      Display #"

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v9, v9, v19

    div-long v9, v9, v17

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_76

    :cond_c7
    move-wide/from16 v58, v3

    :goto_76
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v3, v58

    goto :goto_75

    :cond_c8
    move-wide/from16 v58, v3

    move-wide/from16 v9, v37

    const/4 v2, 0x1

    goto :goto_77

    :cond_c9
    move/from16 v11, p1

    move-wide/from16 v58, v3

    :goto_77
    add-int/lit8 v7, v7, 0x1

    move/from16 p1, v11

    move-wide/from16 v3, v58

    goto/16 :goto_74

    :cond_ca
    move/from16 v11, p1

    move-wide/from16 v58, v3

    cmp-long v3, v9, v25

    if-lez v3, :cond_cb

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Total running: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v9, v9, v19

    div-long v9, v9, v17

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cb
    invoke-virtual {v13, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual {v13, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v9

    cmp-long v7, v3, v25

    if-gtz v7, :cond_cc

    cmp-long v7, v9, v25

    if-lez v7, :cond_cd

    :cond_cc
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Total cpu time: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v3, v17

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v9, v17

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cd
    invoke-virtual {v13, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v3

    if-eqz v3, :cond_d0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    Total cpu time per freq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v3

    move/from16 v7, v27

    if-ne v7, v4, :cond_cf

    move-object/from16 v9, p0

    move-object/from16 v4, v30

    invoke-direct {v9, v4, v3}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ce
    move/from16 p1, v2

    goto :goto_79

    :cond_cf
    move-object/from16 v9, p0

    move-object/from16 v4, v30

    const/4 v10, 0x0

    :goto_78
    array-length v15, v3

    if-ge v10, v15, :cond_ce

    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 p1, v2

    move-object/from16 p7, v3

    aget-wide v2, p7, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p1

    move-object/from16 v3, p7

    goto :goto_78

    :goto_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7a

    :cond_d0
    move-object/from16 v9, p0

    move/from16 p1, v2

    move/from16 v7, v27

    move-object/from16 v4, v30

    :goto_7a
    invoke-virtual {v13, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_d3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "    Total screen-off cpu time per freq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    if-ne v7, v3, :cond_d1

    invoke-direct {v9, v4, v2}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_d1
    const/4 v3, 0x0

    :goto_7b
    array-length v10, v2

    if-ge v3, v10, :cond_d2

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 p7, v2

    move v10, v3

    aget-wide v2, p7, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v10, 0x1

    move-object/from16 v2, p7

    goto :goto_7b

    :cond_d2
    :goto_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d3
    invoke-virtual {v9}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v3, v2, [J

    const/4 v10, 0x0

    :goto_7d
    const/4 v15, 0x7

    if-ge v10, v15, :cond_da

    invoke-virtual {v13, v3, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v15

    if-eqz v15, :cond_d6

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v15, "    Cpu times per freq at state "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v10

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v7, v2, :cond_d5

    invoke-direct {v9, v4, v3}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d4
    move/from16 v27, v11

    move-object/from16 v23, v12

    goto :goto_7f

    :cond_d5
    const/4 v15, 0x0

    :goto_7e
    if-ge v15, v2, :cond_d4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v27, v11

    move-object/from16 v23, v12

    aget-wide v11, v3, v15

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v23

    move/from16 v11, v27

    goto :goto_7e

    :goto_7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    :cond_d6
    move/from16 v27, v11

    move-object/from16 v23, v12

    :goto_80
    invoke-virtual {v13, v3, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v11

    if-eqz v11, :cond_d9

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "    Screen-off cpu times per freq at state "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v7, v2, :cond_d8

    invoke-direct {v9, v4, v3}, Landroid/os/BatteryStats;->getScaledCpuFreqTimes(Lcom/android/internal/os/CpuScalingPolicies;[J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d7
    move/from16 p7, v2

    move-object v12, v3

    goto :goto_82

    :cond_d8
    const/4 v11, 0x0

    :goto_81
    if-ge v11, v2, :cond_d7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p7, v2

    move-object v12, v3

    aget-wide v2, v12, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p7

    move-object v3, v12

    goto :goto_81

    :goto_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_83

    :cond_d9
    move/from16 p7, v2

    move-object v12, v3

    :goto_83
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p7

    move-object v3, v12

    move-object/from16 v12, v23

    move/from16 v11, v27

    goto/16 :goto_7d

    :cond_da
    move/from16 v27, v11

    move-object/from16 v23, v12

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v47, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v10, p1

    :goto_84
    if-ltz v3, :cond_e8

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    move/from16 p1, v10

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v9

    move-object/from16 v38, v13

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    move-object/from16 v73, v14

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v14

    move-object/from16 v30, v4

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    move/from16 v33, v7

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v7

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    if-nez v5, :cond_db

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v35

    move/from16 v5, v35

    goto :goto_85

    :cond_db
    const/4 v5, 0x0

    :goto_85
    cmp-long v35, v9, v25

    if-nez v35, :cond_dd

    cmp-long v35, v12, v25

    if-nez v35, :cond_dd

    cmp-long v35, v14, v25

    if-nez v35, :cond_dd

    if-nez v4, :cond_dd

    if-nez v5, :cond_dd

    if-nez v7, :cond_dd

    if-eqz v1, :cond_dc

    goto :goto_86

    :cond_dc
    move/from16 v10, p1

    move-object/from16 v12, p2

    goto/16 :goto_8d

    :cond_dd
    :goto_86
    move-object/from16 p7, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Proc "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "      CPU: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "usr + "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "krn ; "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "fg"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_df

    if-nez v7, :cond_df

    if-eqz v1, :cond_de

    goto :goto_87

    :cond_de
    move-object/from16 v10, p6

    goto :goto_89

    :cond_df
    :goto_87
    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "      "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_e0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " starts"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_88

    :cond_e0
    const/4 v4, 0x0

    :goto_88
    if-eqz v7, :cond_e2

    if-eqz v4, :cond_e1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " crashes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_e2
    if-eqz v1, :cond_e4

    if-eqz v4, :cond_e3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " anrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e4
    :goto_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, p2

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_8a
    if-ge v1, v5, :cond_e7

    move-object/from16 v11, p7

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v4

    if-eqz v4, :cond_e6

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "      * Killed for "

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_e5

    const-string v7, "cpu"

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8b

    :cond_e5
    const-string/jumbo v7, "unknown"

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_8b
    const-string v7, " use: "

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v13, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v13, v14, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " over "

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v13, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v13, v14, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v13, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v7, v13, v25

    if-eqz v7, :cond_e6

    const-string v7, " ("

    invoke-virtual {v12, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v13, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v35, 0x64

    mul-long v13, v13, v35

    move-object/from16 p6, v10

    iget-wide v9, v4, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, "%)"

    invoke-virtual {v12, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c

    :cond_e6
    move-object/from16 p6, v10

    :goto_8c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, p6

    move-object/from16 p7, v11

    goto :goto_8a

    :cond_e7
    move-object/from16 p6, v10

    const/4 v10, 0x1

    :goto_8d
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v9, p0

    move/from16 v5, p4

    move-object v1, v12

    move-object/from16 v4, v30

    move/from16 v7, v33

    move-object/from16 v13, v38

    move-object/from16 v14, v73

    goto/16 :goto_84

    :cond_e8
    move-object v12, v1

    move-object/from16 v30, v4

    move/from16 v33, v7

    move/from16 p1, v10

    move-object/from16 v38, v13

    move-object/from16 v73, v14

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v47, 0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move/from16 v2, p1

    :goto_8e
    if-ltz v3, :cond_ee

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Apk "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v47, 0x1

    add-int/lit8 v5, v5, -0x1

    move v7, v5

    const/4 v5, 0x0

    :goto_8f
    if-ltz v7, :cond_e9

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "      Wakeup alarm "

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v8, v23

    invoke-virtual {v12, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Counter;

    move/from16 v10, p4

    invoke-virtual {v5, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " times"

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x1

    goto :goto_8f

    :cond_e9
    move/from16 v10, p4

    move-object/from16 v8, v23

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v47, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_90
    if-ltz v4, :cond_ec

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v13, v21

    invoke-virtual {v7, v13, v14, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v21

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v9

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v7

    cmp-long v11, v21, v25

    if-nez v11, :cond_ea

    if-nez v9, :cond_ea

    if-eqz v7, :cond_eb

    :cond_ea
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      Service "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        Created for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v11, v21, v17

    invoke-static {v0, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "uptime\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        Starts: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", launches: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v12, p2

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v5, v47

    :cond_eb
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v21, v13

    goto :goto_90

    :cond_ec
    move-wide/from16 v13, v21

    if-nez v5, :cond_ed

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "      (nothing executed)"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ed
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v23, v8

    move-wide/from16 v21, v13

    move/from16 v2, v47

    goto/16 :goto_8e

    :cond_ee
    move/from16 v10, p4

    move-wide/from16 v13, v21

    move-object/from16 v8, v23

    const/16 v47, 0x1

    if-nez v2, :cond_ef

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    (nothing executed)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ef
    :goto_91
    add-int/lit8 v1, v31, 0x1

    move-object/from16 v11, p0

    move-object/from16 v6, p6

    move-object/from16 v23, v8

    move v5, v10

    move-wide/from16 v21, v13

    move/from16 p1, v27

    move/from16 v14, v28

    move-object/from16 v10, v32

    move/from16 v27, v33

    move-object/from16 v15, v46

    move-wide/from16 v8, v56

    move-wide/from16 v2, v58

    move v13, v1

    move-object v1, v12

    move-object/from16 v12, v29

    goto/16 :goto_44

    :cond_f0
    return-void
.end method

.method public blacklist dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 p2, p4, 0x18

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_0
    const-wide p5, 0x10b00000001L

    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p5

    const-wide v1, 0x10500000001L

    const/16 p2, 0x24

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 p2, p4, 0x4

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p7, p0, p2}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object p2

    new-instance p4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {p4, p1, p2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    invoke-direct {p0, v0, p2}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    :cond_1
    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fKB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fMB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fGB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string p0, "--%"

    return-object p0

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%.1f%%"

    invoke-virtual {p2, p3, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public blacklist getBatteryCapacity()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v0

    if-lez v0, :cond_0

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v0

    if-lez v0, :cond_1

    div-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result p0

    return p0
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract blacklist getCameraEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCoverDisplayHighRefreshRateTime(JI)J
.end method

.method public abstract blacklist getCoverDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getCpuEnergyConsumptionUC()J
.end method

.method public abstract blacklist getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomEnergyConsumerBatteryConsumptionUC()[J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenDozeSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenOffSinceChargeCoulombCounter()I
.end method

.method public abstract blacklist getDischargeAmountScreenOffSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract blacklist getDischargeAmountScreenOnSinceChargeCoulombCounter()I
.end method

.method public abstract blacklist getDischargeAmountScreenOnSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSilentOnScreenOffSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSilentOnScreenOnSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSubScreenDozeSinceChargePermil()I
.end method

.method public abstract blacklist getDischargeAmountSubScreenOnSinceChargePermil()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract blacklist getGnssEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract blacklist getKernelCpuSpeedTimes()[[J
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract blacklist getMainDisplayHighRefreshRateTime(JI)J
.end method

.method public abstract blacklist getMainDisplayRefreshRateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract blacklist getMobileActive5GTime(JI)J
.end method

.method public abstract blacklist getMobileActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract blacklist getMobileRadioEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract blacklist getNetworkModemControllerActivity()Landroid/os/BatteryStats$ModemActivityCounter;
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract blacklist getNrNsaTime(J)J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getPhoneEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getScreenAutoBrightnessTime(IJI)J
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract blacklist getScreenDozeEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract blacklist getScreenHighBrightnessTime(JI)J
.end method

.method public abstract blacklist getScreenOffKernelCpuSpeedTimes()[[J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract blacklist getScreenOnEnergyConsumptionUC()J
.end method

.method public abstract blacklist getScreenOnGpsRunningTime(JI)J
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract blacklist getScreenWakeStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Counter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSilentLogOnScreenOffTime(JI)J
.end method

.method public abstract blacklist getSilentLogOnScreenOnTime(JI)J
.end method

.method public abstract blacklist getSpeakerCallTime(II)J
.end method

.method public abstract blacklist getSpeakerMediaTime(II)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract blacklist getSubScreenAutoBrightnessTime(IJI)J
.end method

.method public abstract blacklist getSubScreenBrightnessTime(IJI)J
.end method

.method public abstract blacklist getSubScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getSubScreenDozeCount(I)I
.end method

.method public abstract blacklist getSubScreenDozeTime(JI)J
.end method

.method public abstract blacklist getSubScreenHighBrightnessTime(JI)J
.end method

.method public abstract blacklist getSubScreenOnCount(I)I
.end method

.method public abstract blacklist getSubScreenOnTime(JI)J
.end method

.method public abstract blacklist getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract blacklist getTxPowerSharingTime(JI)J
.end method

.method public abstract blacklist getTxSharingDischargeAmount()J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract blacklist hasSpeakerOutPowerReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public abstract blacklist iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method blacklist printLatestBackupData(Ljava/io/PrintWriter;)V
    .locals 9

    new-instance p0, Ljava/io/File;

    const-string v0, "/data/log/batterystats/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const-string v6, "/data/log/batterystats/newbatterystats"

    if-ge v3, v0, :cond_2

    aget-object v7, p0, v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    move-wide v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmp-long p0, v4, v1

    if-gtz p0, :cond_3

    goto :goto_5

    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v2, "\nLatest newbatterystats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method public abstract blacklist updateTxPowerSharing()V
.end method
