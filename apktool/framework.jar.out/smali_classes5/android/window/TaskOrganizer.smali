.class public Landroid/window/TaskOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskOrganizer.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskOrganizer;

.field private final blacklist mTaskOrganizerController:Landroid/window/ITaskOrganizerController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    new-instance v0, Landroid/window/TaskOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskOrganizer$1;-><init>(Landroid/window/TaskOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    iput-object p2, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/window/TaskOrganizer;->getController()Landroid/window/ITaskOrganizerController;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskOrganizerController;
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/window/TaskOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .locals 0

    return-void
.end method

.method public blacklist createDeskRootTask(IIIILandroid/os/IBinder;ZZ)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface/range {p0 .. p7}, Landroid/window/ITaskOrganizerController;->createDeskRootTask(IIIILandroid/os/IBinder;ZZ)V
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

.method public blacklist createRootTask(IILandroid/os/IBinder;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;ZZ)V

    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;ZZ)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface/range {p0 .. p5}, Landroid/window/ITaskOrganizerController;->createRootTask(IILandroid/os/IBinder;ZZ)V
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

.method public blacklist createStageRootTask(IIILandroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController;->createStageRootTask(IIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizerController;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizerController;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public blacklist getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizerController;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizerController;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .locals 0

    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .locals 0

    return-void
.end method

.method public blacklist onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public blacklist registerOrganizer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, p0}, Landroid/window/ITaskOrganizerController;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 0

    return-void
.end method

.method public blacklist requestAffordanceAnim(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    return-void
.end method

.method public blacklist resetStashedFreeform(IZ)V
    .locals 0

    return-void
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizerController;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizerController;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizerController;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist unregisterOrganizer()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, p0}, Landroid/window/ITaskOrganizerController;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
