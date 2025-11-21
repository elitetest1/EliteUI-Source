.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final greylist-max-o ADDITIONAL_INFO_MASK:I = 0x40

.field private static final greylist-max-o ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final greylist-max-o DATA_INJECTION_MASK:I = 0x10

.field private static final greylist-max-o DATA_INJECTION_SHIFT:I = 0x4

.field private static final greylist-max-o DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final greylist-max-o DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final greylist-max-o DIRECT_REPORT_MASK:I = 0x380

.field private static final greylist-max-o DIRECT_REPORT_SHIFT:I = 0x7

.field private static final greylist-max-o DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final greylist-max-o DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final whitelist REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final greylist-max-o REPORTING_MODE_MASK:I = 0xe

.field public static final whitelist REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final whitelist REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final greylist-max-o REPORTING_MODE_SHIFT:I = 0x1

.field public static final whitelist REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field public static final blacklist SEM_ACCELEROMETER_HIGHG:I = 0x10072

.field public static final blacklist SEM_ACCELEROMETER_SUB:I = 0x10097

.field public static final blacklist SEM_ACCELEROMETER_SUB2:I = 0x100a5

.field public static final blacklist SEM_ACCELEROMETER_UNCALIBRATED_SUB:I = 0x10098

.field public static final blacklist SEM_ACCELEROMETER_UNCALIBRATED_SUB2:I = 0x100a6

.field public static final blacklist SEM_FOLDING_ANGLE:I = 0x10096

.field public static final blacklist SEM_GYROSCOPE_SUB:I = 0x10099

.field public static final blacklist SEM_GYROSCOPE_SUB2:I = 0x100a7

.field public static final blacklist SEM_GYROSCOPE_UNCALIBRATED_SUB:I = 0x1009a

.field public static final blacklist SEM_GYROSCOPE_UNCALIBRATED_SUB2:I = 0x100a8

.field public static final blacklist SEM_MAGNETIC_SUB:I = 0x100a9

.field public static final blacklist SEM_MAGNETIC_UNCALIBRATED_SUB:I = 0x100aa

.field public static final blacklist SEM_TABLE_MODE:I = 0x1009d

.field public static final blacklist SEM_TRIMAGNETIC_FIELD:I = 0x1009e

.field public static final blacklist SEM_TYPE_ANGLE_SENSOR_STATUS_CHECK:I = 0x100a4

.field public static final blacklist SEM_TYPE_AUDIO_PROXIMITY:I = 0x1003d

.field public static final blacklist SEM_TYPE_AUTOBRIGHTNESS:I = 0x10041

.field public static final blacklist SEM_TYPE_BACK_TAP:I = 0x10073

.field public static final blacklist SEM_TYPE_CALLGESTURE:I = 0x1003a

.field public static final blacklist SEM_TYPE_CAMERA_LIGHT:I = 0x10044

.field public static final blacklist SEM_TYPE_CAR_CRASH_DETECTION:I = 0x10070

.field public static final blacklist SEM_TYPE_CHECK_PROXIMITY:I = 0x1003b

.field public static final blacklist SEM_TYPE_DEVICE_COMMON_INFO:I = 0x10071

.field public static final blacklist SEM_TYPE_DROP_CLASSIFIER:I = 0x1006c

.field public static final blacklist SEM_TYPE_EARSENSE:I = 0x8

.field public static final blacklist SEM_TYPE_FLAT_MOTION:I = 0x100c9

.field public static final blacklist SEM_TYPE_FLIP_COVER_DETECTOR:I = 0x10067

.field public static final whitelist SEM_TYPE_FOLDING_ANGLE:I = 0x10096

.field public static final blacklist SEM_TYPE_FOLDING_ANGLE_SUB:I = 0x100ac

.field public static final blacklist SEM_TYPE_FOLDING_STATE:I = 0x1009f

.field public static final blacklist SEM_TYPE_FOLDING_STATE_SUB:I = 0x100ab

.field public static final blacklist SEM_TYPE_FREEFALL_DETECT:I = 0x10042

.field public static final blacklist SEM_TYPE_GRIP_NOTIFIER:I = 0x1006d

.field public static final blacklist SEM_TYPE_GRIP_SUB:I = 0x10064

.field public static final blacklist SEM_TYPE_GRIP_SUB2:I = 0x10065

.field public static final blacklist SEM_TYPE_GRIP_SUB3:I = 0x10066

.field public static final blacklist SEM_TYPE_HALLIC:I = 0x10040

.field public static final whitelist SEM_TYPE_HEART_RATE:I = 0x1001a

.field public static final blacklist SEM_TYPE_HOVER_PROXIMITY:I = 0x1003f

.field public static final blacklist SEM_TYPE_LED_COVER_EVENT:I = 0x10046

.field public static final blacklist SEM_TYPE_LID_ANGLE_FUSION_LOGGING:I = 0x100a0

.field public static final blacklist SEM_TYPE_LID_FOLDING_STATE_LPM:I = 0x100a1

.field public static final blacklist SEM_TYPE_LID_FOLDING_STATE_LPM_SUB:I = 0x100ad

.field public static final whitelist SEM_TYPE_LIGHT_CCT:I = 0x10033

.field public static final blacklist SEM_TYPE_LIGHT_SEAMLESS:I = 0x1004e

.field public static final blacklist SEM_TYPE_LIGHT_STRM_SUB:I = 0x1006a

.field public static final blacklist SEM_TYPE_LIGHT_SUB:I = 0x10069

.field public static final blacklist SEM_TYPE_LP_SCAN_STATE:I = 0x10055

.field public static final blacklist SEM_TYPE_MOCCA_CORE:I = 0x10075

.field public static final blacklist SEM_TYPE_MOVE_DETECTOR:I = 0x10039

.field public static final blacklist SEM_TYPE_PHYSICAL_PROXIMITY:I = 0x10038

.field public static final blacklist SEM_TYPE_POCKET_DETECTOR:I = 0x10049

.field public static final blacklist SEM_TYPE_POCKET_MODE:I = 0x10045

.field public static final blacklist SEM_TYPE_POCKET_MODE_LITE:I = 0x10048

.field public static final blacklist SEM_TYPE_POCKET_POS_MODE:I = 0x100a2

.field public static final blacklist SEM_TYPE_POWER_KEY_DETECTOR:I = 0x10043

.field public static final blacklist SEM_TYPE_SAR_BACKOFF_MOTION:I = 0x1006b

.field public static final blacklist SEM_TYPE_SAR_FOLDING:I = 0x100af

.field public static final blacklist SEM_TYPE_SEQ_FOLD_MON:I = 0x100ae

.field public static final blacklist SEM_TYPE_SEQ_STEP:I = 0x1006f

.field public static final blacklist SEM_TYPE_SHAKE_TRACKER:I = 0x1004c

.field public static final blacklist SEM_TYPE_SMART_ALERT:I = 0x100c8

.field public static final blacklist SEM_TYPE_SUPERSTEADY_GYROSCOPE:I = 0x1006e

.field public static final blacklist SEM_TYPE_TAP_TRACKER:I = 0x1004b

.field public static final blacklist SEM_TYPE_TOUCH_LIGHT:I = 0x10068

.field public static final blacklist SEM_TYPE_TOUCH_PROXIMITY:I = 0x1003c

.field public static final blacklist SEM_TYPE_TOUCH_PROXIMITY_POCKET:I = 0x1004a

.field public static final blacklist SEM_TYPE_VDIS_GYRO:I = 0x10047

.field public static final blacklist SEM_WAKE_UP_MOTION:I = 0x10036

.field private static final greylist-max-o SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final greylist-max-o SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final blacklist SENSOR_TYPE_BLOODGLUCOSE:I = 0x1001f

.field public static final blacklist SENSOR_TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final whitelist STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final whitelist STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final whitelist STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final greylist-max-o STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final whitelist STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final whitelist STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final greylist-max-o STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final whitelist STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final whitelist STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final whitelist STRING_TYPE_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes"

.field public static final whitelist STRING_TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final whitelist STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final whitelist STRING_TYPE_HEADING:Ljava/lang/String; = "android.sensor.heading"

.field public static final whitelist STRING_TYPE_HEAD_TRACKER:Ljava/lang/String; = "android.sensor.head_tracker"

.field public static final whitelist STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final whitelist STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final whitelist STRING_TYPE_HINGE_ANGLE:Ljava/lang/String; = "android.sensor.hinge_angle"

.field public static final whitelist STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final whitelist STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final whitelist STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final whitelist STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final whitelist STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final whitelist STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final whitelist STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final whitelist STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final whitelist STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final whitelist STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final whitelist STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final whitelist STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final whitelist STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final whitelist STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final whitelist STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final whitelist STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final whitelist STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final whitelist STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_ACCELEROMETER:I = 0x1

.field public static final whitelist TYPE_ACCELEROMETER_LIMITED_AXES:I = 0x26

.field public static final whitelist TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:I = 0x28

.field public static final whitelist TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final whitelist TYPE_ALL:I = -0x1

.field public static final whitelist TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final blacklist TYPE_BIO:I = 0x10019

.field public static final blacklist TYPE_BIO_ALC:I = 0x10029

.field public static final blacklist TYPE_BIO_LED_GREEN:I = 0x10025

.field public static final blacklist TYPE_BIO_LED_IR:I = 0x10023

.field public static final blacklist TYPE_BIO_LED_RED:I = 0x10024

.field public static final blacklist TYPE_BIO_LED_VIOLET:I = 0x10026

.field public static final blacklist TYPE_BODY_TEMPERATURE:I = 0x1001e

.field public static final blacklist TYPE_CONTROL_MOTIONRECOGNITION:I = 0x1001b

.field public static final greylist-max-r TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final whitelist TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final whitelist TYPE_DYNAMIC_SENSOR_META:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TYPE_ELECTROCARDIOGRAM:I = 0x10022

.field public static final whitelist TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final whitelist TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final greylist-max-o TYPE_GLANCE_GESTURE:I = 0x18

.field public static final whitelist TYPE_GRAVITY:I = 0x9

.field public static final blacklist TYPE_GRIP:I = 0x10018

.field public static final blacklist TYPE_GRIP_WIFI:I = 0x10027

.field public static final whitelist TYPE_GYROSCOPE:I = 0x4

.field public static final whitelist TYPE_GYROSCOPE_LIMITED_AXES:I = 0x27

.field public static final whitelist TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:I = 0x29

.field public static final whitelist TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final whitelist TYPE_HEADING:I = 0x2a

.field public static final whitelist TYPE_HEAD_TRACKER:I = 0x25

.field public static final whitelist TYPE_HEART_BEAT:I = 0x1f

.field public static final whitelist TYPE_HEART_RATE:I = 0x15

.field public static final whitelist TYPE_HINGE_ANGLE:I = 0x24

.field public static final blacklist TYPE_INTERRUPT_GYRO:I = 0x1002b

.field public static final whitelist TYPE_LIGHT:I = 0x5

.field public static final blacklist TYPE_LIGHT_CCT:I = 0x10033

.field public static final blacklist TYPE_LIGHT_IR:I = 0x1002a

.field public static final whitelist TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final whitelist TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final whitelist TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final whitelist TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final blacklist TYPE_MOTIONRECOGNITION:I = 0x10017

.field public static final whitelist TYPE_MOTION_DETECT:I = 0x1e

.field public static final blacklist TYPE_MOTOR_TEST:I = 0x1002d

.field public static final whitelist TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_PEDOMETER_LOGGING:I = 0x10021

.field public static final blacklist TYPE_PEDOMETER_NORMAL:I = 0x10020

.field public static final greylist-max-r TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final whitelist TYPE_POSE_6DOF:I = 0x1c

.field public static final whitelist TYPE_PRESSURE:I = 0x6

.field public static final whitelist TYPE_PROXIMITY:I = 0x8

.field public static final blacklist TYPE_PROXIMITY_ALERT:I = 0x1002e

.field public static final blacklist TYPE_PROXIMITY_FLICKER:I = 0x1002f

.field public static final blacklist TYPE_PROXIMITY_POCKET:I = 0x10035

.field public static final blacklist TYPE_REAR_LED_BLUE:I = 0x1005d

.field public static final blacklist TYPE_REAR_LED_GREEN:I = 0x1005c

.field public static final blacklist TYPE_REAR_LED_RED:I = 0x1005b

.field public static final blacklist TYPE_REAR_PROX_DETECT:I = 0x1002c

.field public static final whitelist TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final whitelist TYPE_ROTATION_VECTOR:I = 0xb

.field public static final blacklist TYPE_SCONTEXT:I = 0x10032

.field public static final blacklist TYPE_SCREEN_ORIENTATION:I = 0x10016

.field public static final whitelist TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final whitelist TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final whitelist TYPE_STEP_COUNTER:I = 0x13

.field public static final whitelist TYPE_STEP_DETECTOR:I = 0x12

.field public static final blacklist TYPE_TABLE_ROTATION:I = 0x1001c

.field public static final whitelist TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_THERMISTOR:I = 0x10034

.field public static final greylist-max-o TYPE_TILT_DETECTOR:I = 0x16

.field public static final blacklist TYPE_ULTRAVIOLET:I = 0x10015

.field public static final blacklist TYPE_UV_RAY:I = 0x1001d

.field public static final greylist-max-o TYPE_WAKE_GESTURE:I = 0x17

.field public static final whitelist TYPE_WRIST_TILT_GESTURE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist sSamsungDualSensorReportingModes:[I

.field private static final blacklist sSamsungSensorReportingModes:[I

.field private static final greylist-max-o sSensorReportingModes:[I


# instance fields
.field private greylist-max-o mFifoMaxEventCount:I

.field private greylist-max-o mFifoReservedEventCount:I

.field private greylist mFlags:I

.field private greylist-max-o mHandle:I

.field private greylist-max-o mId:I

.field private greylist-max-o mMaxDelay:I

.field private greylist-max-o mMaxRange:F

.field private greylist-max-o mMinDelay:I

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPower:F

.field private greylist-max-o mRequiredPermission:Ljava/lang/String;

.field private greylist-max-o mResolution:F

.field private greylist-max-o mStringType:Ljava/lang/String;

.field private greylist-max-o mType:I

.field private blacklist mUuid:Ljava/util/UUID;

.field private greylist-max-o mVendor:Ljava/lang/String;

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/16 v0, 0x2b

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/hardware/Sensor;->sSamsungSensorReportingModes:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/hardware/Sensor;->sSamsungDualSensorReportingModes:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
        0x1
        0x6
        0x6
        0x6
        0x9
        0x9
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x3
        0x10
        0x3
        0x5
        0x3
        0x1
        0x3
        0x5
        0x5
        0x2
        0xd
        0x10
        0x3
        0x3
        0x3
        0x3
        0x10
        0x10
        0x10
        0x10
        0x3
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0xa
        0x10
        0x10
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x3
        0x6
        0x3
        0x6
        0x3
        0x6
        0x3
        0x6
    .end array-data
.end method

.method constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/input/InputSensorInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getHandle()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxRange()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getResolution()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getPower()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMinDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoReservedEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoMaxEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getStringType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getRequiredPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFlags:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getId()I

    move-result p1

    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    new-instance p1, Ljava/util/UUID;

    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    iput-object p1, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-void
.end method

.method public static greylist-max-o getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 7

    sget-object v0, Landroid/hardware/Sensor;->sSamsungSensorReportingModes:[I

    array-length v1, v0

    const v2, 0x10015

    add-int/2addr v1, v2

    sget-object v3, Landroid/hardware/Sensor;->sSamsungDualSensorReportingModes:[I

    array-length v4, v3

    const v5, 0x10096

    add-int/2addr v4, v5

    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v6, 0xb

    if-ne p0, v6, :cond_0

    const/16 v6, 0x11

    if-gt p1, v6, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    sget-object p1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v6, p1

    if-ge p0, v6, :cond_1

    aget p0, p1, p0

    return p0

    :cond_1
    if-lt p0, v2, :cond_2

    if-ge p0, v1, :cond_2

    sub-int/2addr p0, v2

    aget p0, v0, p0

    return p0

    :cond_2
    if-lt p0, v5, :cond_3

    if-ge p0, v4, :cond_3

    sub-int/2addr p0, v5

    aget p0, v3, p0

    return p0

    :cond_3
    const/16 p0, 0x10

    return p0
.end method

.method private blacklist setId(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    return-void
.end method

.method private greylist-max-o setType(I)Z
    .locals 1

    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const-string p1, "android.sensor.heading"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_2
    const-string p1, "android.sensor.gyroscope_limited_axes_uncalibrated"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_3
    const-string p1, "android.sensor.accelerometer_limited_axes_uncalibrated"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_4
    const-string p1, "android.sensor.gyroscope_limited_axes"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_5
    const-string p1, "android.sensor.accelerometer_limited_axes"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_6
    const-string p1, "android.sensor.head_tracker"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_7
    const-string p1, "android.sensor.hinge_angle"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_8
    const-string p1, "android.sensor.accelerometer_uncalibrated"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_9
    const-string p1, "android.sensor.low_latency_offbody_detect"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_a
    const-string p1, "android.sensor.dynamic_sensor_meta"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_b
    const-string p1, "android.sensor.device_orientation"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_c
    const-string p1, "android.sensor.pick_up_gesture"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_d
    const-string p1, "android.sensor.glance_gesture"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_e
    const-string p1, "android.sensor.wake_gesture"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_f
    const-string p1, "android.sensor.tilt_detector"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_10
    const-string p1, "android.sensor.heart_rate"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_11
    const-string p1, "android.sensor.geomagnetic_rotation_vector"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_12
    const-string p1, "android.sensor.step_counter"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_13
    const-string p1, "android.sensor.step_detector"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_14
    const-string p1, "android.sensor.significant_motion"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_15
    const-string p1, "android.sensor.gyroscope_uncalibrated"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_16
    const-string p1, "android.sensor.game_rotation_vector"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_17
    const-string p1, "android.sensor.magnetic_field_uncalibrated"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_18
    const-string p1, "android.sensor.ambient_temperature"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_19
    const-string p1, "android.sensor.relative_humidity"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1a
    const-string p1, "android.sensor.rotation_vector"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1b
    const-string p1, "android.sensor.linear_acceleration"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1c
    const-string p1, "android.sensor.gravity"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1d
    const-string p1, "android.sensor.proximity"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1e
    const-string p1, "android.sensor.temperature"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1f
    const-string p1, "android.sensor.pressure"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_20
    const-string p1, "android.sensor.light"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_21
    const-string p1, "android.sensor.gyroscope"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_22
    const-string p1, "android.sensor.orientation"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_23
    const-string p1, "android.sensor.magnetic_field"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_24
    const-string p1, "android.sensor.accelerometer"

    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o setUuid(JJ)V
    .locals 1

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public whitelist getFifoMaxEventCount()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return p0
.end method

.method public whitelist getFifoReservedEventCount()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return p0
.end method

.method public greylist getHandle()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mHandle:I

    return p0
.end method

.method public whitelist getHighestDirectReportRateLevel()I
    .locals 1

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x380

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mId:I

    return p0
.end method

.method public whitelist getMaxDelay()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return p0
.end method

.method public whitelist getMaximumRange()F
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return p0
.end method

.method public whitelist getMinDelay()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPower()F
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mPower:F

    return p0
.end method

.method public whitelist getReportingMode()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0xe

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o getRequiredPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getResolution()F
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mResolution:F

    return p0
.end method

.method public whitelist getStringType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    return p0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 2

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    :cond_0
    iget p0, p0, Landroid/hardware/Sensor;->mVersion:I

    return p0
.end method

.method public whitelist isAdditionalInfoSupported()Z
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isDataInjectionSupported()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    shr-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isDirectChannelTypeSupported(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-lez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public whitelist isDynamicSensor()Z
    .locals 0

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isWakeUpSensor()Z
    .locals 1

    iget p0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semIsOnFoldingSide()Z
    .locals 2

    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const v0, 0x10041

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string p0, "ro.product.vendor.device"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "bloom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "b2q"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method greylist-max-o setRange(FF)V
    .locals 0

    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Sensor name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
