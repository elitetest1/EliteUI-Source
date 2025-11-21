.class Landroid/hardware/CameraLightSensorManager$1;
.super Ljava/lang/Object;
.source "CameraLightSensorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/CameraLightSensorManager;->initLocked(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/CameraLightSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/CameraLightSensorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service is connected, cmp name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " service = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V

    iget-object p2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmEnabledService(Landroid/hardware/CameraLightSensorManager;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmConnectionFailed(Landroid/hardware/CameraLightSensorManager;)Z

    move-result p2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->removeMessages(I)V

    iget-object p2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmSystemHandler(Landroid/hardware/CameraLightSensorManager;)Landroid/hardware/CameraLightSensorManager$ResponseHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/hardware/CameraLightSensorManager$ResponseHandler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmConnectionFailed(Landroid/hardware/CameraLightSensorManager;Z)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "CameraLightSensor_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service is disconnected, cmp name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmLockIPC(Landroid/hardware/CameraLightSensorManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmProcessBinded(Landroid/hardware/CameraLightSensorManager;Z)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemIPC(Landroid/hardware/CameraLightSensorManager;Landroid/os/Messenger;)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CameraLightSensor_Manager"

    const-string v2, "Unbinding and removing connection for service."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/CameraLightSensorManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v2}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fgetmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {v0, v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmCameraLightSensorConnection(Landroid/hardware/CameraLightSensorManager;Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Landroid/hardware/CameraLightSensorManager$1;->this$0:Landroid/hardware/CameraLightSensorManager;

    invoke-static {p0, v1}, Landroid/hardware/CameraLightSensorManager;->-$$Nest$fputmSystemHandler(Landroid/hardware/CameraLightSensorManager;Landroid/hardware/CameraLightSensorManager$ResponseHandler;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
