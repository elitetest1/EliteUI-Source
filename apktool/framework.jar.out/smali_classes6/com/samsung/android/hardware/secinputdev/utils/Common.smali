.class public Lcom/samsung/android/hardware/secinputdev/utils/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final blacklist CLEAR_COVER_CLOSED:I = 0x3

.field public static final blacklist CLEAR_COVER_OPENED:I = 0x0

.field public static final blacklist DEVID_DEFAULT_TSP:I = 0x1

.field public static final blacklist DEVID_EXTRA_TSP:I = 0x2

.field public static final blacklist DEVID_KEY:I = 0x15

.field public static final blacklist DEVID_KEYBOARD:I = 0x1f

.field public static final blacklist DEVID_SPEN:I = 0xb

.field public static final blacklist DEVID_TAAS:I = 0x29

.field public static final blacklist DEVID_TSP_MAX:I = 0x3

.field public static final blacklist EAR_DETECT_DISABLE:I = 0x0

.field public static final blacklist EAR_DETECT_HIGH_SENSE_ENABLE:I = 0x3

.field public static final blacklist EAR_DETECT_LOW_SENSE_ENABLE:I = 0x1

.field public static final blacklist ERR_CMD_FAILED:I = -0x6

.field public static final blacklist ERR_DUPLICATED:I = -0x8

.field public static final blacklist ERR_EXCEPTION:I = -0x7

.field public static final blacklist ERR_NONE:I = 0x0

.field public static final blacklist ERR_NONE_PENDING:I = 0x2

.field public static final blacklist ERR_NONE_WAIT:I = 0x1

.field public static final blacklist ERR_NOT_DEFINED:I = -0x14

.field public static final blacklist ERR_NO_CMD_EXIST:I = -0x5

.field public static final blacklist ERR_NO_DEVICE:I = -0x2

.field public static final blacklist ERR_NO_HAL_SERVICE:I = -0x3

.field public static final blacklist ERR_TIMEOUT:I = -0x9

.field public static final blacklist EXTERNAL_NOISE_DEX:I = 0x1

.field public static final blacklist FOD_PRESS_FAST_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_PRESS_FAST_MODE_ENABLE:I = 0x1

.field public static final blacklist FOD_STRICT_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_STRICT_MODE_ENABLE:I = 0x1

.field public static final blacklist FORCE_OFF:I = 0x15

.field public static final blacklist FORCE_ON:I = 0x16

.field public static final blacklist KEY_APPSELECT:I = 0x244

.field public static final blacklist KEY_BACK:I = 0x9e

.field public static final blacklist KEY_EMERGENCY:I = 0x2a0

.field public static final blacklist KEY_HOME:I = 0xac

.field public static final blacklist KEY_HOT:I = 0xfc

.field public static final blacklist KEY_MICMUTE:I = 0xf8

.field public static final blacklist KEY_POWER:I = 0x74

.field public static final blacklist KEY_RECENT:I = 0xfe

.field public static final blacklist KEY_VOLUMEDOWN:I = 0x72

.field public static final blacklist KEY_VOLUMEUP:I = 0x73

.field public static final blacklist LCD_DOZE1:I = 0x3

.field public static final blacklist LCD_DOZE2:I = 0x4

.field public static final blacklist LCD_EARLY_EVENT:Z = false

.field public static final blacklist LCD_LATE_EVENT:Z = true

.field public static final blacklist LCD_NONE:I = 0x0

.field public static final blacklist LCD_OFF:I = 0x1

.field public static final blacklist LCD_ON:I = 0x2

.field public static final blacklist MODE_DISABLE:I = 0x0

.field public static final blacklist MODE_ENABLE:I = 0x1

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_HIGH:I = 0x2

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_LOW:I = 0x0

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_MID:I = 0x1

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_0:I = 0x14

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_180:I = 0x16

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_270:I = 0x17

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_90:I = 0x15

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_DISABLED:I = 0xc

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_ENABLED:I = 0xb

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_EVENT:Ljava/lang/String; = "AIVF_EVENT"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_SENSITIVITY:Ljava/lang/String; = "AIVF_SENSITIVITY"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_THRESHOLD:Ljava/lang/String; = "AIVF_THRESHOLD"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_VOLUME:Ljava/lang/String; = "AIVF_VOLUME"

.field public static final blacklist MOTION_CONTROL_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final blacklist MOTION_ENABLE_TYPE_AIVF:Ljava/lang/String; = "AIVF"

.field public static final blacklist MOTION_ENABLE_TYPE_AWD:Ljava/lang/String; = "AWD"

.field public static final blacklist MOTION_ENABLE_TYPE_PALM:Ljava/lang/String; = "PALM"

.field public static final blacklist MOTION_ENABLE_TYPE_PALM_SWIPE:Ljava/lang/String; = "PALM_SWIPE"

.field public static final blacklist MOTION_ENABLE_TYPE_POCKET_DETECT:Ljava/lang/String; = "POCKET_DETECT"

.field public static final blacklist MOTION_ERROR_TYPE_NOT_LOADED_SERVICE:I = -0x2

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_HARDWARE:I = -0x1

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_MOTION:I = -0x3

.field public static final blacklist MOTION_ERROR_TYPE_NULL_STRING:I = -0x4

.field public static final blacklist MOTION_TYPE_AIVF:I = 0x5

.field public static final blacklist MOTION_TYPE_AWD:I = 0x6

.field public static final blacklist MOTION_TYPE_CALLBACK:I = 0x8

.field public static final blacklist MOTION_TYPE_EAR_DETECTION:I = 0x3

.field public static final blacklist MOTION_TYPE_GRIP_FILTER:I = 0x4

.field public static final blacklist MOTION_TYPE_NONE:I = 0x0

.field public static final blacklist MOTION_TYPE_PALM_MUTE:I = 0x1

.field public static final blacklist MOTION_TYPE_PALM_SWIPE:I = 0x2

.field public static final blacklist MOTION_TYPE_POCKET_DETECT:I = 0x9

.field public static final blacklist MOTION_TYPE_STREAM:I = 0x7

.field public static final blacklist RAWDATA_CALLBACK:I = 0x1

.field public static final blacklist RAWDATA_LISTENER:I = 0x2

.field public static final blacklist RAWDATA_TYPE_MAX:I = 0x3

.field public static final blacklist REPORT_INFO_HANDEDGE:Ljava/lang/String; = "handedge"

.field public static final blacklist RESULT_NG:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field public static final blacklist RESULT_STR_NA:Ljava/lang/String; = "NA"

.field public static final blacklist RESULT_STR_NG:Ljava/lang/String; = "NG"

.field public static final blacklist SERVICE_SHUTDOWN:I = -0x1

.field public static final blacklist SPEN_MODE_NONE:I = 0x0

.field public static final blacklist SPEN_MODE_POGO_KEYBOARD:I = 0x2

.field public static final blacklist SPEN_MODE_SPEN_COVER:I = 0x1

.field public static final blacklist SUPPORT_AOT:I = 0x1

.field public static final blacklist SUPPORT_INPUT_MONITOR:I = 0x10000

.field public static final blacklist SUPPORT_MISCALIBRATION:I = 0x200

.field public static final blacklist SUPPORT_MULTICALIBRATION:I = 0x400

.field public static final blacklist SUPPORT_OPENSHORT:I = 0x100

.field public static final blacklist SUPPORT_PRESSURE:I = 0x2

.field public static final blacklist SUPPORT_PROX_LP_SCAN_ENABLED:I = 0x40

.field public static final blacklist SUPPORT_RAWDATA_MOTION_AIVF:I = 0x200000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_AWD:I = 0x800000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_PALM:I = 0x100000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_PALM_SWIPE:I = 0x400000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_POCKET_DETECT:I = 0x80000

.field public static final blacklist SUPPORT_RAWDATA_TRANSFER:I = 0x40000

.field public static final blacklist SUPPORT_RR120:I = 0x4

.field public static final blacklist SUPPORT_SYSINPUT_ENABLED:I = 0x20

.field public static final blacklist SUPPORT_VRR:I = 0x8

.field public static final blacklist SUPPORT_WIRELESS_TX:I = 0x10

.field public static final blacklist SYNC_CHANGED_30_TO_60:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
