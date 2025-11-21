.class final Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;
.super Ljava/lang/Object;
.source "SessionProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

.field private blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    iput-wide p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    return-void
.end method


# virtual methods
.method public whitelist onCaptureCompleted(JILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify capture complete due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onCaptureFailed(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify capture failure start due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onCaptureProcessStarted(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify process start due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onCaptureSequenceAborted(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceAborted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify capture sequence abort due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceCompleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify capture sequence done due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onCaptureStarted(IJ)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureStarted(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SessionProcessor"

    const-string p1, "Failed to notify capture start due to remote exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
