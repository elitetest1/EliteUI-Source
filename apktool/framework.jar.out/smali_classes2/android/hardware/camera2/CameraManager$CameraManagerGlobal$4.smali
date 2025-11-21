.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field final synthetic blacklist val$cameraId:Ljava/lang/String;

.field final synthetic blacklist val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v0, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    const-string v1, "CameraManagerGlobal"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    const-string p0, "Unknown lens facing."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v4, v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    if-eqz v4, :cond_7

    if-eq v4, v3, :cond_6

    if-eq v4, v2, :cond_5

    const/4 v2, 0x3

    if-eq v4, v2, :cond_4

    const/16 p0, 0x64

    if-eq v4, p0, :cond_3

    const/16 p0, 0x65

    if-eq v4, p0, :cond_3

    const-string p0, "Unknown device state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceClose(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceIdle(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceActive(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_7
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceOpen(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
