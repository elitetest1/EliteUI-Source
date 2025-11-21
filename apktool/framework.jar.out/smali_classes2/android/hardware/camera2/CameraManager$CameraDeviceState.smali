.class Landroid/hardware/camera2/CameraManager$CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraDeviceState"
.end annotation


# instance fields
.field public final blacklist mClientName:Ljava/lang/String;

.field public final blacklist mDeviceState:I

.field public final blacklist mFacing:I

.field public final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    iput p4, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    return-void
.end method

.method private static blacklist cameraFacingToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "CAMERA_FACING_UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "CAMERA_FACING_EXTERNAL"

    return-object p0

    :cond_1
    const-string p0, "CAMERA_FACING_FRONT"

    return-object p0

    :cond_2
    const-string p0, "CAMERA_FACING_BACK"

    return-object p0
.end method

.method private static blacklist cameraStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const-string p0, "CAMERA_STATE_UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "CAMERA_STATE_OPENING_FAILED"

    return-object p0

    :cond_1
    const-string p0, "CAMERA_STATE_OPENING"

    return-object p0

    :cond_2
    const-string p0, "CAMERA_STATE_CLOSED"

    return-object p0

    :cond_3
    const-string p0, "CAMERA_STATE_IDLE"

    return-object p0

    :cond_4
    const-string p0, "CAMERA_STATE_ACTIVE"

    return-object p0

    :cond_5
    const-string p0, "CAMERA_STATE_OPEN"

    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    iget v3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    iget v3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    if-ne v1, v3, :cond_2

    iget-object v1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    iget p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mUserId:I

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "facing %s state now %s for client %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
