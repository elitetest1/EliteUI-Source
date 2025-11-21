.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;,
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    }
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallHeavyHitterWatcher"

.field private static blacklist sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBatchStartTimeStamp:J

.field private blacklist mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

.field private blacklist mCachedCandidateContainersIndex:I

.field private final blacklist mCachedCandidateFrequencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCachedCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCachedCandidateSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentInputSize:I

.field private blacklist mEnabled:Z

.field private final blacklist mHeavyHitterCandiates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputSize:I

.field private blacklist mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mThreshold:F

.field private blacklist mTotalInputSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aget-object p0, v0, v1

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .locals 2

    sget-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;-><init>()V

    sput-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    :cond_0
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initCachedCandidateContainersLocked(I)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    new-array p1, p1, [Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    new-instance v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    :cond_1
    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    return-void
.end method

.method private blacklist releaseHeavyHitterContainerLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aput-object p1, v0, v1

    return-void
.end method

.method private blacklist resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;",
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;IIFI)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iput-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iput p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    iput p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iput p5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    invoke-direct {p0, p6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->initCachedCandidateContainersLocked(I)V

    return-void
.end method


# virtual methods
.method public blacklist onTransaction(ILjava/lang/Class;I)V
    .locals 10

    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/internal/util/HeavyHitterSketch;->add(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcom/android/internal/util/HeavyHitterSketch;->getCandidates(Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_2
    if-le v3, v4, :cond_3

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iput-object p2, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iput p3, v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iget-object p0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne v3, p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/internal/util/HeavyHitterSketch;->getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    if-eqz v2, :cond_4

    new-instance v4, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v4, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V

    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v4, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iget v4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    iget v5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    sub-long/2addr v6, v8

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;->onHeavyHit(Ljava/util/List;IFJ)V

    :cond_6
    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    invoke-interface {p1}, Lcom/android/internal/util/HeavyHitterSketch;->reset()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iput p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    iput p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    :cond_7
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .locals 9

    const-string v1, "Invalid parameter to heavy hitter watcher: "

    iget-object v7, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-nez p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    :cond_0
    monitor-exit v7

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v3, p3, v2

    if-ltz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, p3, v3

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne p2, v5, :cond_3

    iget v5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    sub-float v5, p3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v2, v5, v2

    if-gez v2, :cond_3

    iput-object p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    monitor-exit v7

    return-void

    :cond_3
    div-float v5, v3, p3

    float-to-int v6, v5

    invoke-static {}, Lcom/android/internal/util/HeavyHitterSketch;->newDefault()Lcom/android/internal/util/HeavyHitterSketch;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/HeavyHitterSketch;->getRequiredValidationInputRatio()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_4

    int-to-float v8, p2

    sub-float/2addr v3, v5

    mul-float/2addr v8, v3

    float-to-int v3, v8

    goto :goto_0

    :cond_4
    move v3, p2

    :goto_0
    :try_start_1
    invoke-interface {v2, p2, v6}, Lcom/android/internal/util/HeavyHitterSketch;->setConfig(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v1, p4

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    monitor-exit v7

    return-void

    :catch_0
    const-string v0, "BinderCallHeavyHitterWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return-void

    :cond_5
    :goto_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
