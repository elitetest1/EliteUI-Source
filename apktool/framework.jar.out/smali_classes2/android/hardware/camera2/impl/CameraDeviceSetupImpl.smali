.class public Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
.super Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
.source "CameraDeviceSetupImpl.java"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    return-void
.end method

.method public static blacklist isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x22

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v2, p1, v3, v4}, Landroid/hardware/ICameraService;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    new-instance v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v5

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Camera service is currently unavailable."

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No cameras available on device"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSessionCharacteristics(Landroid/hardware/camera2/params/SessionConfiguration;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v9

    move-object v7, p1

    invoke-interface/range {v3 .. v9}, Landroid/hardware/ICameraService;->getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v3}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Session Characteristics Query not supported by device."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Session Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Camera service is currently unavailable"

    invoke-direct {p0, v2, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Camera service is currently disabled"

    invoke-direct {p0, v2, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Camera service is currently unavailable."

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No cameras available on device"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist openCamera(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraDeviceSetup(cameraId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
