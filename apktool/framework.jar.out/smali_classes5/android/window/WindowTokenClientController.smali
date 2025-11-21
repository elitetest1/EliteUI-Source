.class public Landroid/window/WindowTokenClientController;
.super Ljava/lang/Object;
.source "WindowTokenClientController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowTokenClientController"

.field private static blacklist sController:Landroid/window/WindowTokenClientController;


# instance fields
.field private final blacklist mAppThread:Landroid/app/IApplicationThread;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mWindowTokenClients:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/WindowTokenClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    return-void
.end method

.method public static blacklist createInstanceForTesting()Landroid/window/WindowTokenClientController;
    .locals 1

    new-instance v0, Landroid/window/WindowTokenClientController;

    invoke-direct {v0}, Landroid/window/WindowTokenClientController;-><init>()V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/window/WindowTokenClientController;
    .locals 2

    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/window/WindowTokenClientController;

    invoke-direct {v1}, Landroid/window/WindowTokenClientController;-><init>()V

    sput-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    :cond_0
    sget-object v1, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;
    .locals 4

    const-string v0, "Can\'t find attached WindowTokenClient for "

    instance-of v1, p1, Landroid/window/WindowTokenClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/window/WindowTokenClient;

    iget-object v3, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    sget-object p0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWindowTokenClient failed for non-window token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private blacklist onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    return-void
.end method

.method public static blacklist overrideForTesting(Landroid/window/WindowTokenClientController;)V
    .locals 1

    const-class v0, Landroid/window/WindowTokenClientController;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/window/WindowTokenClientController;->sController:Landroid/window/WindowTokenClientController;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist recordWindowContextToken(Landroid/window/WindowTokenClient;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist attachToDisplayArea(Landroid/window/WindowTokenClient;IILandroid/os/Bundle;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-direct {p0, v2, p1, p2}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->trackSystemUiContextBeforeWms()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->recordWindowContextToken(Landroid/window/WindowTokenClient;)V

    :cond_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    const-string p2, "Failed attachToDisplayContent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist attachToWindowToken(Landroid/window/WindowTokenClient;Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowManager;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/window/WindowTokenClientController;->onWindowContextTokenAttached(Landroid/window/WindowTokenClient;Landroid/window/WindowContextInfo;Z)V

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist detachIfNeeded(Landroid/window/WindowTokenClient;)V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->detachWindowContext(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist getWindowContext(Landroid/os/IBinder;)Landroid/content/Context;
    .locals 2

    instance-of v0, p1, Landroid/window/WindowTokenClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/window/WindowTokenClient;

    iget-object v0, p0, Landroid/window/WindowTokenClientController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/window/WindowTokenClientController;->mWindowTokenClients:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/window/WindowTokenClient;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-object v1
.end method

.method public blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onWindowConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/window/WindowTokenClientController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowTokenClient;->postOnConfigurationChanged(Landroid/content/res/Configuration;I)V

    :cond_1
    return-void
.end method

.method public blacklist onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/WindowContextInfo;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    :cond_0
    return-void
.end method

.method public blacklist onWindowContextWindowRemoved(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowTokenClientController;->getWindowTokenClientIfAttached(Landroid/os/IBinder;)Landroid/window/WindowTokenClient;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/window/WindowTokenClient;->onWindowTokenRemoved()V

    :cond_0
    return-void
.end method

.method public blacklist reparentToDisplayArea(Landroid/window/WindowTokenClient;I)V
    .locals 2

    const-string v0, "Didn\'t succeed reparenting of "

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowTokenClientController;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object p0, p0, Landroid/window/WindowTokenClientController;->mAppThread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p0, p1, p2}, Landroid/view/IWindowManager;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/window/WindowTokenClientController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to displayId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
