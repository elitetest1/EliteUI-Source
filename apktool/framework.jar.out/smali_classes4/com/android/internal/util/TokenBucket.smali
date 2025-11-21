.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private greylist-max-o mAvailable:I

.field private final greylist-max-o mCapacity:I

.field private final greylist-max-o mFillDelta:I

.field private greylist-max-o mLastFill:J


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    const-string p1, "capacity must be strictly positive"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method

.method private greylist-max-o fill()V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method

.method private greylist-max-o scaledTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget p0, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o available()I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    iget p0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return p0
.end method

.method public greylist-max-o capacity()I
    .locals 0

    iget p0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return p0
.end method

.method public greylist-max-o get(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_1

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v1

    :cond_1
    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return p1
.end method

.method public greylist-max-o get()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o has()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    iget p0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o reset(I)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method
