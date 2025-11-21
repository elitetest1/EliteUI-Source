.class public Lcom/android/internal/util/RateLimitingCache;
.super Ljava/lang/Object;
.source "RateLimitingCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/RateLimitingCache$CachedValue;,
        Lcom/android/internal/util/RateLimitingCache$ValueFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/RateLimitingCache<",
            "TValue;>.CachedValue;>;"
        }
    .end annotation
.end field

.field private final blacklist mLimit:I

.field private final blacklist mPeriodMillis:J

.field private final blacklist mRandomOffset:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    return-void
.end method

.method public constructor blacklist <init>(JI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    iput p3, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr p1, v2

    long-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/RateLimitingCache$ValueFetcher<",
            "TValue;>;)TValue;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    iget-wide v1, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/RateLimitingCache;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    add-long/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    sub-long v4, v1, v4

    iget-wide v6, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_3

    iget-object v5, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    iget v6, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    if-ge v5, v6, :cond_6

    :cond_3
    invoke-interface {p1}, Lcom/android/internal/util/RateLimitingCache$ValueFetcher;->fetchValue()Ljava/lang/Object;

    move-result-object p1

    iget v5, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    if-le v5, v3, :cond_4

    iget-wide v5, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    rem-long v5, v1, v5

    sub-long/2addr v1, v5

    :cond_4
    new-instance v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    invoke-direct {v5, p0}, Lcom/android/internal/util/RateLimitingCache$CachedValue;-><init>(Lcom/android/internal/util/RateLimitingCache;)V

    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    iput-wide v1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    if-eqz v4, :cond_5

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_2
    iget-object p1, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    iget-object p0, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    iget-object p0, p0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method protected blacklist getTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
