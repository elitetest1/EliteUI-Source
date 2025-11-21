.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCameraInfo"
.end annotation


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mDeviceId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    iget v3, p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
