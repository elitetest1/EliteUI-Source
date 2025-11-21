.class Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;
.super Landroid/hardware/camera2/extension/IRequestCallback$Stub;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$D6CUWulxuJuwufM1h9E-TSpjDtQ(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V8DXZ_sDSRZw5Awg3xDu2E-zGi0(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureStarted$0(IJJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ezGATn_0lweB2BFu0DRZBG7mAjE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceAborted$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k_f6CireYU2Rtfmy5lIDubG5DEE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mbahspFMcisar8_I5Ve3I9avIbk(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceCompleted$5(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ve6Sbm4B-Z8IeVXKj3y3OPTxCwg(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zr4P29ui7n7QVACbMNkS-w_xGBw(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureBufferLost$4(IJI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureBufferLost$4(IJI)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureBufferLost(Landroid/hardware/camera2/extension/RequestProcessor$Request;JI)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureCompleted(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureFailed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureProgressed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$6(I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$5(IJ)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$0(IJJ)V
    .locals 1

    move-object v0, p0

    iget-object p0, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v0, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface/range {p0 .. p5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureStarted(Landroid/hardware/camera2/extension/RequestProcessor$Request;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureBufferLost(IJI)V
    .locals 9

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    move v5, p1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Request id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    :cond_0
    move-object v13, v3

    new-instance v11, Ljava/util/ArrayList;

    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    new-instance v14, Landroid/hardware/camera2/CaptureResult;

    iget-object v15, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v5, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v6, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v7, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v8, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v5, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    iget-object v6, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v7, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v8, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    iget-wide v9, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    iget v12, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    invoke-direct/range {v4 .. v13}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v1, v4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Request id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .locals 9

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/hardware/camera2/CaptureFailure;

    iget-object v2, p2, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    iget v3, p2, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    iget-boolean v4, p2, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    iget v5, p2, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    iget-object v8, p2, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Request id: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/hardware/camera2/CaptureResult;

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v3, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v5, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Request id: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onCaptureSequenceAborted(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist onCaptureSequenceCompleted(IJ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist onCaptureStarted(IJJ)V
    .locals 10

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    move v5, p1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Request id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
