.class public Landroid/media/Utils$ListenerList;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList$Listener;,
        Landroid/media/Utils$ListenerList$ListenerWithCancellation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mClearCallingIdentity:Z

.field private final blacklist mForceRemoveConsistency:Z

.field private blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictSingleCallerOnEvent:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/media/Utils$ListenerList;-><init>(ZZZ)V

    return-void
.end method

.method public constructor blacklist <init>(ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    iput-boolean p1, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    iput-boolean p2, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    iput-boolean p3, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/Utils$ListenerList$Listener<",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/Utils$ListenerList$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/media/Utils$ListenerList$1;-><init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    iget-object p2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist notify(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    :try_start_1
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    check-cast v3, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    invoke-interface {v3, p1, p2}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    throw p1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public blacklist remove(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->cancel()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
