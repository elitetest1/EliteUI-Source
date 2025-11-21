.class final Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;
.super Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionProcessorImpl"
.end annotation


# instance fields
.field blacklist mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field private blacklist mVendorId:J

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/SessionProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;Landroid/hardware/camera2/extension/SessionProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;-><init>(Landroid/hardware/camera2/extension/SessionProcessor;)V

    return-void
.end method


# virtual methods
.method public blacklist deInitSession(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->deInitSession(Landroid/os/IBinder;)V

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p0, p0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method

.method public blacklist getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            ")",
            "Landroid/hardware/camera2/extension/CameraSessionConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p6, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p5, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v3, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v3, p3}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v4, p4}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance v5, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v5, p5}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/extension/SessionProcessor;->initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)Landroid/hardware/camera2/extension/ExtensionConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class p2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object p4, p2

    check-cast p4, Ljava/lang/Class;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide p2

    iput-wide p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/extension/ExtensionConfiguration;->getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid extension configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist onCaptureSessionEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->finishCameraOperation()V

    :cond_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {p0}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionEnd()V

    return-void
.end method

.method public blacklist onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->startCameraOperation()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/RequestProcessor;-><init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionStart(Landroid/hardware/camera2/extension/RequestProcessor;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public blacklist startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v1, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/extension/SessionProcessor;->startMultiFrameCapture(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method public blacklist startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startRepeating(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method public blacklist startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p2, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method public blacklist stopRepeating()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {p0}, Landroid/hardware/camera2/extension/SessionProcessor;->stopRepeating()V

    return-void
.end method
