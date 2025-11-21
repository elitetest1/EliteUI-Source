.class public final Landroid/hardware/camera2/extension/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/RequestProcessor$Request;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;,
        Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RequestProcessor"


# instance fields
.field private final blacklist mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

.field private final blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    iput-wide p2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->abortCaptures()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setRepeating(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v1, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, p1, v1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    const-string p2, "Failed to set the repeating request"

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist stopRepeating()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->stopRepeating()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist submit(Landroid/hardware/camera2/extension/RequestProcessor$Request;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v2, v3, v0}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/Request;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v1, v0, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, p1, v1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    const-string p2, "Failed to submit capture request"

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist submitBurst(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mVendorId:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->initializeParcelable(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/extension/RequestProcessor;->mRequestProcessor:Landroid/hardware/camera2/extension/IRequestProcessorImpl;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;

    invoke-direct {v1, p1, p3, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;-><init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0, v1}, Landroid/hardware/camera2/extension/IRequestProcessorImpl;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    const-string p2, "Failed to submit burst request"

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
