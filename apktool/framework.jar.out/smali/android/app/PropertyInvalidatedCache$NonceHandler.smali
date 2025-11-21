.class abstract Landroid/app/PropertyInvalidatedCache$NonceHandler;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NonceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    }
.end annotation


# instance fields
.field private blacklist mCorkedInvalidates:I

.field private blacklist mCorks:I

.field private blacklist mInvalidated:I

.field protected final blacklist mLock:Ljava/lang/Object;

.field final blacklist mName:Ljava/lang/String;

.field protected blacklist mShadowNonce:J

.field private blacklist mTestMode:Z

.field private blacklist mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsGlobalLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsTestMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist wakeAllWatchersLocked()V
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist cork()V
    .locals 5

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    :cond_2
    :goto_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist disable()V
    .locals 3

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist getNonce()J
    .locals 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonceInternal()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method abstract blacklist getNonceInternal()J
.end method

.method blacklist getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    .locals 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    invoke-direct {v1, v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;-><init>(II)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist invalidate()V
    .locals 5

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smisReservedNonce(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist registerWatcher(Ljava/util/concurrent/Semaphore;)V
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist setNonce(J)V
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonceInternal(J)V

    :cond_0
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->wakeAllWatchersLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method abstract blacklist setNonceInternal(J)V
.end method

.method blacklist setTestMode(Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist uncork()V
    .locals 4

    const-string v0, "cork underflow: "

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-ltz v2, :cond_2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist unregisterWatcher(Ljava/util/concurrent/Semaphore;)V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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
