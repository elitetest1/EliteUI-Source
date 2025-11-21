.class public Landroid/app/ScreenCaptureCallbackHandler;
.super Ljava/lang/Object;
.source "ScreenCaptureCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;,
        Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;
    }
.end annotation


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

.field private final blacklist mScreenCaptureRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    new-instance p1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    invoke-direct {p1, v0}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;-><init>(Landroid/util/ArrayMap;)V

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    return-void
.end method


# virtual methods
.method public blacklist registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V
    .locals 2

    new-instance v0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    invoke-direct {v0, p1, p2}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;-><init>(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V

    iget-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    invoke-interface {p2, v0, p0}, Landroid/app/IActivityTaskManager;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Capture observer already registered with the activity"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mScreenCaptureRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v1, p0, Landroid/app/ScreenCaptureCallbackHandler;->mActivityToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/app/ScreenCaptureCallbackHandler;->mObserver:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;

    invoke-interface {p1, v1, p0}, Landroid/app/IActivityTaskManager;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Capture observer not registered with the activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
