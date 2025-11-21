.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.super Landroid/hardware/camera2/CameraInjectionSession;
.source "CameraInjectionSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraInjectionSessionImpl"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

.field private final blacklist mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$DccGcC1Zim1e2hjzs0K-qzoy3NQ(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInjectionStatusCallback(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist notifyError(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;->onInjectionError(I)V

    :cond_0
    return-void
.end method

.method private blacklist scheduleNotifyError(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraInjectionSessionImpl"

    const-string v2, "CameraInjectionSessionImpl died unexpectedly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->stopInjection()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    return-object p0
.end method

.method public blacklist onInjectionError(I)V
    .locals 5

    const-string v0, "Unknown error from injection session: "

    const-string v1, "CameraInjectionSessionImpl"

    const-string v2, "Injection session error received, code %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const-string v3, "CameraInjectionSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "CameraInjectionSessionImpl"

    const-string v2, "The camera injection session has encountered a serious error"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    invoke-interface {p1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "CameraInjectionSessionImpl"

    const-string v2, "The camera injection session has encountered a serious error"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_3
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    monitor-exit v0

    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
