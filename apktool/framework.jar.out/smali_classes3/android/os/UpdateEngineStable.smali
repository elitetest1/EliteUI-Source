.class public Landroid/os/UpdateEngineStable;
.super Ljava/lang/Object;
.source "UpdateEngineStable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngineStable$ErrorCode;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UpdateEngineStable"

.field private static final blacklist UPDATE_ENGINE_STABLE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineStableService"


# instance fields
.field private final blacklist mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

.field private blacklist mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

.field private final blacklist mUpdateEngineStableCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    const-string v0, "android.os.UpdateEngineStableService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineStable$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to find android.os.UpdateEngineStableService"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    invoke-interface/range {p0 .. p6}, Landroid/os/IUpdateEngineStable;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist bind(Landroid/os/UpdateEngineStableCallback;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngineStable;->bind(Landroid/os/UpdateEngineStableCallback;Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public blacklist bind(Landroid/os/UpdateEngineStableCallback;Landroid/os/Handler;)Z
    .locals 2

    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/UpdateEngineStable$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngineStable$1;-><init>(Landroid/os/UpdateEngineStable;Landroid/os/Handler;Landroid/os/UpdateEngineStableCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    invoke-interface {p0, v1}, Landroid/os/IUpdateEngineStable;->bind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unbind()Z
    .locals 3

    iget-object v0, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;

    if-nez v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStable:Landroid/os/IUpdateEngineStable;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngineStable;->unbind(Landroid/os/IUpdateEngineStableCallback;)Z

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngineStable;->mUpdateEngineStableCallback:Landroid/os/IUpdateEngineStableCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
