.class public Landroid/app/servertransaction/ClientTransactionListenerController;
.super Ljava/lang/Object;
.source "ClientTransactionListenerController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ClientTransactionListenerController"

.field private static blacklist sController:Landroid/app/servertransaction/ClientTransactionListenerController;


# instance fields
.field private final blacklist mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mContextToPreChangedConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field private blacklist mIsClientTransactionExecuting:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    return-void
.end method

.method public static blacklist createInstanceForTesting(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/app/servertransaction/ClientTransactionListenerController;
    .locals 1

    new-instance v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;
    .locals 3

    const-class v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/servertransaction/ClientTransactionListenerController;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    sput-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    :cond_0
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/app/WindowConfiguration;->areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist onActivityWindowInfoChanged(Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Ljava/util/function/BiConsumer;

    new-instance v3, Landroid/window/ActivityWindowInfo;

    invoke-direct {v3, p2}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    invoke-interface {v2, p1, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist onClientTransactionFinished()V
    .locals 7

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    :try_start_1
    iget-object v5, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    invoke-direct {p0, v5, v6}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    throw v1

    :cond_2
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    const-string p0, "ClientTransactionListenerController"

    const-string v0, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public blacklist onClientTransactionStarted()V
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onContextConfigurationPostChanged(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_3

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "ClientTransactionListenerController"

    const-string p1, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist onContextConfigurationPreChanged(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onDisplayChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayChangeFromWindowManager(I)V

    return-void
.end method

.method public blacklist registerActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

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

.method public blacklist unregisterActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
