.class public Landroid/app/jank/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/StateTracker$StateData;
    }
.end annotation


# static fields
.field protected static final blacklist MAX_CONCURRENT_STATE_COUNT:I = 0x19

.field private static final blacklist MAX_POOL_SIZE:I = 0x1f4

.field protected static final blacklist MAX_PREVIOUSLY_ACTIVE_STATE_COUNT:I = 0x3e8


# instance fields
.field private blacklist mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPreviousStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStateDataObjectPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public blacklist addPendingStateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/jank/StateTracker$StateData;

    if-nez v1, :cond_2

    new-instance v1, Landroid/app/jank/StateTracker$StateData;

    invoke-direct {v1}, Landroid/app/jank/StateTracker$StateData;-><init>()V

    :cond_2
    iget-object v2, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdStart:J

    iput-object v0, v1, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    iput-object p3, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetState:Ljava/lang/String;

    iput-object p1, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetCategory:Ljava/lang/String;

    iput-object p2, v1, Landroid/app/jank/StateTracker$StateData;->mWidgetId:Ljava/lang/String;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, v1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    iget-object p0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/jank/StateTracker$StateData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroid/app/jank/StateTracker;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    iget-object p3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/16 v0, 0x3e8

    if-ge p3, v0, :cond_1

    iget-object p0, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist retrieveAllStates(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Landroid/app/jank/StateTracker;->mActiveStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist stateProcessingComplete()V
    .locals 4

    iget-object v0, p0, Landroid/app/jank/StateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/jank/StateTracker$StateData;

    iget-boolean v3, v2, Landroid/app/jank/StateTracker$StateData;->mProcessed:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/jank/StateTracker;->mPreviousStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/app/jank/StateTracker;->mStateDataObjectPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist updateState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/jank/StateTracker;->removeState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/jank/StateTracker;->putState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
