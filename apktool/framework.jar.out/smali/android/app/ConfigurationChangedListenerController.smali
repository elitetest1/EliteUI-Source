.class Landroid/app/ConfigurationChangedListenerController;
.super Ljava/lang/Object;
.source "ConfigurationChangedListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ConfigurationChangedListenerController$ListenerContainer;
    }
.end annotation


# instance fields
.field private final blacklist mListenerContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ConfigurationChangedListenerController$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    return-void
.end method

.method private blacklist indexOf(Ljava/util/function/Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v1, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->isMatch(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    new-instance v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-direct {v1, p1, p2}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist dispatchOnConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->accept(Landroid/os/IBinder;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

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

.method blacklist removeListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object p0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
