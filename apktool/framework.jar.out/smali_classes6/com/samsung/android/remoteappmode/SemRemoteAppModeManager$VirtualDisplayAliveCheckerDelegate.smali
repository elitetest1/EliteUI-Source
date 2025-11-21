.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;
.super Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualDisplayAliveCheckerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onVirtualDisplayCreated(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onVirtualDisplayCreated() displayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;->onVirtualDisplayCreated(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist onVirtualDisplayReleased(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onVirtualDisplayReleased() displayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;->onVirtualDisplayReleased(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
