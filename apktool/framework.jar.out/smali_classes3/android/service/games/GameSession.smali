.class public abstract Landroid/service/games/GameSession;
.super Ljava/lang/Object;
.source "GameSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameSession$LifecycleState;,
        Landroid/service/games/GameSession$GameSessionRootView;,
        Landroid/service/games/GameSession$ScreenshotCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "GameSession"


# instance fields
.field private blacklist mAreTransientInsetsVisibleDueToGesture:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGameSessionController:Landroid/service/games/IGameSessionController;

.field private blacklist mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

.field final blacklist mInterface:Landroid/service/games/IGameSession;

.field private blacklist mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

.field private blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mTaskId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$GXAIOy5CjvIzjMJFbYdMgVPkZ1w(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->lambda$takeScreenshot$0(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/games/GameSession;->doDestroy()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/games/GameSession$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSession$1;-><init>(Landroid/service/games/GameSession;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

    iput-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    return-void
.end method

.method private blacklist doDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    return-void
.end method

.method private blacklist handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "GameSession"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, p0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/service/games/GameScreenshotResult;->getStatus()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    return-void

    :cond_1
    const-string p2, "Error taking screenshot"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    return-void

    :cond_2
    invoke-interface {p1}, Landroid/service/games/GameSession$ScreenshotCallback;->onSuccess()V

    return-void
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$1(Landroid/service/games/GameSessionActivityCallback;Landroid/service/games/GameSessionActivityResult;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getResultCode()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/service/games/GameSessionActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$2(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshot$0(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V
    .locals 0

    iput-object p1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iput p2, p0, Landroid/service/games/GameSession;->mTaskId:I

    iput-object p3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance p1, Landroid/service/games/GameSession$GameSessionRootView;

    iget-object p2, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-direct {p1, p3, p2}, Landroid/service/games/GameSession$GameSessionRootView;-><init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V

    iput-object p1, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {p4, p1, p5, p6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    return-void
.end method

.method public blacklist dispatchTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/service/games/GameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V

    :cond_1
    return-void
.end method

.method blacklist doCreate()V
    .locals 1

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    return-void
.end method

.method public blacklist moveToState(Landroid/service/games/GameSession$LifecycleState;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/service/games/GameSession$LifecycleState;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    :cond_7
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    goto :goto_0

    :cond_8
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    :goto_0
    iput-object p1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    :cond_9
    :goto_1
    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "moveToState should be used only from the main thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onCreate()V
    .locals 0

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    return-void
.end method

.method public whitelist onGameTaskFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 0

    return-void
.end method

.method public final whitelist restartGame()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget p0, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v0, p0}, Landroid/service/games/IGameSessionController;->restartGame(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "GameSession"

    const-string v1, "Failed to restart game"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setTaskOverlayView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0}, Landroid/service/games/GameSession$GameSessionRootView;->removeAllViews()V

    iget-object p0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {p0, p1, p2}, Landroid/service/games/GameSession$GameSessionRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final whitelist startActivityFromGameSessionForResult(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/service/games/GameSessionActivityCallback;)V
    .locals 10

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/games/GameSessionActivityCallback;)V

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/service/games/GameSessionTrampolineActivity;->createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->collectExtraIntentKeys()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object p1, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object p1, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSession"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget v8, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityTaskManager;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result p0

    invoke-static {p0, v7}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4, p0}, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;-><init>(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist takeScreenshot(Ljava/util/concurrent/Executor;Landroid/service/games/GameSession$ScreenshotCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;-><init>(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget p0, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {p2, p0, p1}, Landroid/service/games/IGameSessionController;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not call before onCreate()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
