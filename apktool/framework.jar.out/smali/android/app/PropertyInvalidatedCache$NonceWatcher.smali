.class public Landroid/app/PropertyInvalidatedCache$NonceWatcher;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceWatcher"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private blacklist mLastSeen:J

.field private final blacklist mSem:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p1, v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->registerWatcher(Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->unregisterWatcher(Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method public blacklist isChanged()Z
    .locals 4

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist lastSeen()J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    return-wide v0
.end method

.method public blacklist waitForChange()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public blacklist waitForChange(JLjava/util/concurrent/TimeUnit;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist wakeUp()V
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
