.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

.field private blacklist mEventContext:Landroid/hardware/scontext/SContextEventContext;

.field public blacklist scontext:Landroid/hardware/scontext/SContext;

.field public blacklist timestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    const-class v0, Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEventContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const-class v0, Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/scontext/SContextEventContext;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAbnormalPressureContext()Landroid/hardware/scontext/SContextAbnormalPressure;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextAbnormalPressure;

    return-object p0
.end method

.method public blacklist getActiveTimeMonitorContext()Landroid/hardware/scontext/SContextActiveTimeMonitor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    return-object p0
.end method

.method public blacklist getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActivityBatch;

    return-object p0
.end method

.method public blacklist getActivityLocationLoggingContext()Landroid/hardware/scontext/SContextActivityLocationLogging;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    return-object p0
.end method

.method public blacklist getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActivityNotification;

    return-object p0
.end method

.method public blacklist getActivityNotificationExContext()Landroid/hardware/scontext/SContextActivityNotificationEx;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    return-object p0
.end method

.method public blacklist getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextActivityTracker;

    return-object p0
.end method

.method public blacklist getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextAirMotion;

    return-object p0
.end method

.method public blacklist getAnyMotionDetectorContext()Landroid/hardware/scontext/SContextAnyMotionDetector;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextAnyMotionDetector;

    return-object p0
.end method

.method public blacklist getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextApproach;

    return-object p0
.end method

.method public blacklist getAutoBrightnessContext()Landroid/hardware/scontext/SContextAutoBrightness;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextAutoBrightness;

    return-object p0
.end method

.method public blacklist getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextAutoRotation;

    return-object p0
.end method

.method public blacklist getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextBounceLongMotion;

    return-object p0
.end method

.method public blacklist getBounceShortMotionContext()Landroid/hardware/scontext/SContextBounceShortMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextBounceShortMotion;

    return-object p0
.end method

.method blacklist getCallMotionContext()Landroid/hardware/scontext/SContextCallMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextCallMotion;

    return-object p0
.end method

.method public blacklist getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextCallPose;

    return-object p0
.end method

.method blacklist getCaptureMotionContext()Landroid/hardware/scontext/SContextCaptureMotion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextCaptureMotion;

    return-object p0
.end method

.method public blacklist getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object p0
.end method

.method public blacklist getDevicePhysicalContextMonitorContext()Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;

    return-object p0
.end method

.method public blacklist getDevicePositionContext()Landroid/hardware/scontext/SContextDevicePosition;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextDevicePosition;

    return-object p0
.end method

.method public blacklist getDualDisplayAngleContext()Landroid/hardware/scontext/SContextDualDisplayAngle;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextDualDisplayAngle;

    return-object p0
.end method

.method public blacklist getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    return-object p0
.end method

.method public blacklist getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextEnvironment;

    return-object p0
.end method

.method public blacklist getExerciseContext()Landroid/hardware/scontext/SContextExercise;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextExercise;

    return-object p0
.end method

.method public blacklist getFlatMotioForTableModeContext()Landroid/hardware/scontext/SContextFlatMotionForTableMode;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    return-object p0
.end method

.method public blacklist getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextFlatMotion;

    return-object p0
.end method

.method public blacklist getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object p0
.end method

.method public blacklist getFlipMotionContext()Landroid/hardware/scontext/SContextFlipMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextFlipMotion;

    return-object p0
.end method

.method public blacklist getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextGyroTemperature;

    return-object p0
.end method

.method public blacklist getHallSensorContext()Landroid/hardware/scontext/SContextHallSensor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextHallSensor;

    return-object p0
.end method

.method public blacklist getInactiveTimerContext()Landroid/hardware/scontext/SContextInactiveTimer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextInactiveTimer;

    return-object p0
.end method

.method public blacklist getMainScreenDetectionContext()Landroid/hardware/scontext/SContextMainScreenDetection;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextMainScreenDetection;

    return-object p0
.end method

.method public blacklist getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextMotion;

    return-object p0
.end method

.method public blacklist getMovementAlertContext()Landroid/hardware/scontext/SContextMovementAlert;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextMovementAlert;

    return-object p0
.end method

.method public blacklist getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextMovement;

    return-object p0
.end method

.method public blacklist getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object p0
.end method

.method public blacklist getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextPedometer;

    return-object p0
.end method

.method public blacklist getPhoneStatusMonitorContext()Landroid/hardware/scontext/SContextPhoneStatusMonitor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;

    return-object p0
.end method

.method public blacklist getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextPutDownMotion;

    return-object p0
.end method

.method public blacklist getSLocationCoreContext()Landroid/hardware/scontext/SContextSLocationCore;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextSLocationCore;

    return-object p0
.end method

.method public blacklist getSensorStatusCheckContext()Landroid/hardware/scontext/SContextSensorStatusCheck;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextSensorStatusCheck;

    return-object p0
.end method

.method public blacklist getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextShakeMotion;

    return-object p0
.end method

.method public blacklist getSleepMonitorContext()Landroid/hardware/scontext/SContextSleepMonitor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextSleepMonitor;

    return-object p0
.end method

.method public blacklist getSpecificPoseAlertContext()Landroid/hardware/scontext/SContextSpecificPoseAlert;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    return-object p0
.end method

.method blacklist getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextStepCountAlert;

    return-object p0
.end method

.method public blacklist getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    return-object p0
.end method

.method blacklist getTemperatureAlertContext()Landroid/hardware/scontext/SContextTemperatureAlert;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextTemperatureAlert;

    return-object p0
.end method

.method public blacklist getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextTestFlatMotion;

    return-object p0
.end method

.method public blacklist getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object p0
.end method

.method public blacklist getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    return-object p0
.end method

.method public blacklist getWristUpMotionContext()Landroid/hardware/scontext/SContextWristUpMotion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast p0, Landroid/hardware/scontext/SContextWristUpMotion;

    return-object p0
.end method

.method public blacklist setSContextEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance p1, Landroid/hardware/scontext/SContextSensorStatusCheck;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextSensorStatusCheck;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    new-instance p1, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    new-instance p1, Landroid/hardware/scontext/SContextAnyMotionDetector;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextAnyMotionDetector;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_4
    new-instance p1, Landroid/hardware/scontext/SContextFlipMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextFlipMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    new-instance p1, Landroid/hardware/scontext/SContextMainScreenDetection;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextMainScreenDetection;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    new-instance p1, Landroid/hardware/scontext/SContextSLocationCore;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextSLocationCore;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_6
    new-instance p1, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_7
    new-instance p1, Landroid/hardware/scontext/SContextDualDisplayAngle;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextDualDisplayAngle;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_8
    new-instance p1, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_9
    new-instance p1, Landroid/hardware/scontext/SContextHallSensor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextHallSensor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_a
    new-instance p1, Landroid/hardware/scontext/SContextPhoneStatusMonitor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_b
    new-instance p1, Landroid/hardware/scontext/SContextAbnormalPressure;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextAbnormalPressure;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_c
    new-instance p1, Landroid/hardware/scontext/SContextExercise;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextExercise;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_d
    new-instance p1, Landroid/hardware/scontext/SContextAutoBrightness;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextAutoBrightness;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_e
    new-instance p1, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextFlatMotionForTableMode;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_f
    new-instance p1, Landroid/hardware/scontext/SContextInactiveTimer;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextInactiveTimer;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_10
    new-instance p1, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActiveTimeMonitor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_11
    new-instance p1, Landroid/hardware/scontext/SContextStepLevelMonitor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_12
    new-instance p1, Landroid/hardware/scontext/SContextCallMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextCallMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_13
    new-instance p1, Landroid/hardware/scontext/SContextCaptureMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextCaptureMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_14
    new-instance p1, Landroid/hardware/scontext/SContextActivityNotificationEx;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActivityNotificationEx;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_15
    new-instance p1, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextSleepMonitor;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_16
    new-instance p1, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextSpecificPoseAlert;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_17
    new-instance p1, Landroid/hardware/scontext/SContextActivityNotification;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActivityNotification;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_18
    new-instance p1, Landroid/hardware/scontext/SContextActivityBatch;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActivityBatch;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_19
    new-instance p1, Landroid/hardware/scontext/SContextActivityTracker;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActivityTracker;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1a
    new-instance p1, Landroid/hardware/scontext/SContextActivityLocationLogging;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextActivityLocationLogging;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1b
    new-instance p1, Landroid/hardware/scontext/SContextTemperatureAlert;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextTemperatureAlert;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1c
    new-instance p1, Landroid/hardware/scontext/SContextDevicePosition;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextDevicePosition;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1d
    new-instance p1, Landroid/hardware/scontext/SContextMovementAlert;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextMovementAlert;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1e
    new-instance p1, Landroid/hardware/scontext/SContextFlatMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextFlatMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_1f
    new-instance p1, Landroid/hardware/scontext/SContextWristUpMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextWristUpMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_20
    new-instance p1, Landroid/hardware/scontext/SContextBounceLongMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextBounceLongMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_21
    new-instance p1, Landroid/hardware/scontext/SContextBounceShortMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextBounceShortMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_22
    new-instance p1, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextWakeUpVoice;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_23
    new-instance p1, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_24
    new-instance p1, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextGyroTemperature;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_25
    new-instance p1, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextFlipCoverAction;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_26
    new-instance p1, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextShakeMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_27
    new-instance p1, Landroid/hardware/scontext/SContextCallPose;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextCallPose;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_28
    new-instance p1, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_29
    new-instance p1, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextMovementForPositioning;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2a
    new-instance p1, Landroid/hardware/scontext/SContextEnvironment;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextEnvironment;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2b
    new-instance p1, Landroid/hardware/scontext/SContextAirMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextAirMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2c
    new-instance p1, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2d
    new-instance p1, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2e
    new-instance p1, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_2f
    new-instance p1, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_30
    new-instance p1, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_31
    new-instance p1, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {p1}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-void
.end method
