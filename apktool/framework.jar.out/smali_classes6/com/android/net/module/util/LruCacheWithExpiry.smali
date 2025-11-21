.class public Lcom/android/net/module/util/LruCacheWithExpiry;
.super Ljava/lang/Object;
.source "LruCacheWithExpiry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mExpiryDurationMs:J

.field private final blacklist mMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "TK;",
            "Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mShouldCacheValue:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeSupplier:Ljava/util/function/LongSupplier;


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/LongSupplier;JILjava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongSupplier;",
            "JI",
            "Ljava/util/function/Predicate<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    iput-wide p2, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p4}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    iput-object p5, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    return-void
.end method

.method private blacklist isExpired(J)Z
    .locals 4

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    add-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->timestamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/net/module/util/LruCacheWithExpiry;->isExpired(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, v1, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->entry:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getOrCompute(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Supplier<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/net/module/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    invoke-interface {v1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/net/module/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    new-instance v2, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;

    iget-object p0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {p0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/net/module/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/net/module/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
