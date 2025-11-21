.class public Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;
.super Landroid/hardware/SensorManager;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputSensorManager"
.end annotation


# instance fields
.field final blacklist mId:I

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputDeviceSensorManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    iput p2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    return-void
.end method


# virtual methods
.method protected blacklist cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    return-void
.end method

.method protected blacklist flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget p0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getFullDynamicSensorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method protected blacklist getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget p0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, p0}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist initDataInjectionImpl(ZI)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method protected blacklist registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 1

    iget-object p0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    move v0, p5

    move-object p5, p4

    move p4, v0

    invoke-static/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method protected blacklist requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    return-void
.end method

.method protected blacklist unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
