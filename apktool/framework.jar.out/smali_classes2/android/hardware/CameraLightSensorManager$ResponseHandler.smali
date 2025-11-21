.class Landroid/hardware/CameraLightSensorManager$ResponseHandler;
.super Landroid/os/Handler;
.source "CameraLightSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraLightSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseHandler"
.end annotation


# instance fields
.field public blacklist camera_ev_bv:[F

.field private blacklist old_lux:F

.field private blacklist retry:I

.field private blacklist retyrBinding:I

.field final synthetic blacklist this$0:Landroid/hardware/CameraLightSensorManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/CameraLightSensorManager;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    const/16 p1, 0x3c

    iput p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retyrBinding:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->old_lux:F

    const/4 p1, 0x5

    iput p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, "IPC_SERVICE_START_CAMERA Service not started yet,retry binding service = "

    const-string v1, "Binding Package status= "

    const-string v2, " Exposure= "

    const-string v3, "IPC_SERVICE_START_CAMERA Service not started yet,retry= "

    const-string v4, "MSG_MANAGER_LISTENER_LOOP array is "

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v9, :cond_f

    const/4 v0, 0x3

    if-eq v5, v0, :cond_d

    const/4 v1, 0x6

    const/16 v3, 0x8

    if-eq v5, v1, :cond_8

    if-eq v5, v3, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Landroid/hardware/SensorEvent;

    invoke-direct {v2, v0}, Landroid/hardware/SensorEvent;-><init>(I)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraSensor(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/hardware/SensorEvent;->timestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v5}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmMotionManager(Landroid/hardware/CameraLightSensorManager;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->getEvToLux([F)[F

    move-result-object v5

    aget v6, v5, v8

    iget v7, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->old_lux:F

    cmpl-float v6, v6, v7

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    const-string v6, "Debug_Camera_Listener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " lux= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " exposure= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v5, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " bv= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v5, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget v6, v5, v8

    iput v6, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->old_lux:F

    iget-object v6, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v5, v8

    aput v10, v6, v8

    iget-object v6, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v5, v9

    aput v10, v6, v9

    iget-object v6, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v6, v7

    invoke-interface {v4, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "CameraLightSensor_Manager"

    const-string v2, "Exception while getting listener."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p0

    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v3, v4, v5}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    const-string p0, "CameraLightSensor_Manager"

    const-string v0, "MSG_MANAGER_LISTENER_LOOP mSystemHandler is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "CameraLightSensor_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v4}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    :cond_6
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_7
    :goto_2
    monitor-exit v1

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_8
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "respData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    if-nez p1, :cond_9

    const-string p0, "CameraLightSensor_Manager"

    const-string p1, "received a null event from service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_9
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    :cond_a
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    :cond_b
    const-string p1, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Brightness= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->camera_ev_bv:[F

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Total listeners= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightListener(Landroid/hardware/CameraLightSensorManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_d
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0, v8}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v7, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemMessenger(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_e

    :try_start_7
    const-string v1, "CameraLightSensor_Manager"

    const-string v2, "IPC_SERVICE_UNREGISTER_CONNECTION -> MSG_SERVICE_STOP_CAMERA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_8
    const-string v0, "CameraLightSensor_Manager"

    const-string v1, "IPC_SERVICE_UNREGISTER_CONNECTION -> Dead Object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_3
    monitor-exit p1

    goto/16 :goto_5

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :cond_f
    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-int v2, v4

    const/4 v4, 0x4

    invoke-static {v7, v4, v8, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v4}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemMessenger(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v4, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v4}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_10

    :try_start_a
    const-string v0, "CameraLightSensor_Manager"

    const-string v1, "IPC_SERVICE_START_CAMERA -> MSG_SERVICE_START_CAMERA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "respAlreadyRegister"

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v3}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetlistenerRegistered(Landroid/hardware/CameraLightSensorManager;)S

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemIPC(Landroid/hardware/CameraLightSensorManager;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iput v6, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_4

    :catch_2
    move-exception p0

    :try_start_b
    const-string v0, "CameraLightSensor_Manager"

    const-string v1, "IPC_SERVICE_START_CAMERA -> Dead Object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_10
    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmProcessBinded(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmEnabledService(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retyrBinding:I

    if-lez v2, :cond_12

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.adaptivebrightnessgo"

    const-string v5, "com.samsung.adaptivebrightnessgo.CameraLightSensorService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v3}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v5}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v6}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v9, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmProcessBinded(Landroid/hardware/CameraLightSensorManager;Z)V

    const-string v3, "CameraLightSensor_Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmProcessBinded(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Component= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UserHandle= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CameraLightSensor_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retyrBinding:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmProcessBinded(Landroid/hardware/CameraLightSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x14

    iput v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    :cond_11
    iget v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retyrBinding:I

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retyrBinding:I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v9, v0, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_12
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    if-lez v0, :cond_13

    const-string v0, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v9, v0, v1}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_13
    iget v0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->retry:I

    if-nez v0, :cond_14

    const-string v0, "CameraLightSensor_Manager"

    const-string v1, "IPC_SERVICE_START_CAMERA Service not started yet, will try it again after service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0, v9}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V

    :cond_14
    :goto_4
    monitor-exit p1

    :goto_5
    return-void

    :catchall_4
    move-exception p0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0
.end method
