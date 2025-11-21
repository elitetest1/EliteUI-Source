.class public Landroid/media/tv/tuner/dvr/DvrRecorder;
.super Ljava/lang/Object;
.source "DvrRecorder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TvTunerRecord"

.field private static blacklist sInstantId:I


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsStopped:Z

.field private final blacklist mIsStoppedLock:Ljava/lang/Object;

.field private blacklist mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field private blacklist mOverflow:I

.field private blacklist mSegmentId:I

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$BntrqhXzNRAR_iibMvZfM21TadE(Landroid/media/tv/tuner/dvr/DvrRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->lambda$onRecordStatusChanged$0(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStoppedLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    sget v1, Landroid/media/tv/tuner/dvr/DvrRecorder;->sInstantId:I

    const v2, 0xffff

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    add-int/2addr v1, v0

    sput v1, Landroid/media/tv/tuner/dvr/DvrRecorder;->sInstantId:I

    return-void
.end method

.method private synthetic blacklist lambda$onRecordStatusChanged$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;->onRecordStatusChanged(I)V

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

.method private native blacklist nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I
.end method

.method private native blacklist nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeFlushDvr()I
.end method

.method private native blacklist nativeSetFileDescriptor(I)V
.end method

.method private native blacklist nativeSetStatusCheckIntervalHint(J)I
.end method

.method private native blacklist nativeStartDvr()I
.end method

.method private native blacklist nativeStopDvr()I
.end method

.method private native blacklist nativeWrite(J)J
.end method

.method private native blacklist nativeWrite([BJJ)J
.end method

.method private blacklist onRecordStatusChanged(I)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/media/tv/tuner/dvr/DvrRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/dvr/DvrRecorder;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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


# virtual methods
.method public whitelist attachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api close()V
    .locals 1

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeClose()I

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "failed to close DVR recorder"

    invoke-static {p0, v0}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist configure(Landroid/media/tv/tuner/dvr/DvrSettings;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I

    move-result p0

    return p0
.end method

.method public whitelist detachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I

    move-result p0

    return p0
.end method

.method public whitelist flush()I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStoppedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeFlushDvr()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const-string p0, "TvTunerRecord"

    const-string v1, "Cannot flush non-stopped Record DVR."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeSetFileDescriptor(I)V

    return-void
.end method

.method public blacklist setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setRecordBufferStatusCheckIntervalHint(J)I
    .locals 2

    const/high16 v0, 0x30000

    const-string v1, "Set status check interval hint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeSetStatusCheckIntervalHint(J)I

    move-result p0

    return p0
.end method

.method public whitelist start()I
    .locals 9

    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    const-string v1, "TvTunerRecord"

    const-string v2, "Write Stats Log for Record."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    const/4 v8, 0x0

    const/16 v3, 0x117

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStoppedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeStartDvr()I

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Z

    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist stop()I
    .locals 8

    const-string v0, "TvTunerRecord"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    const/16 v2, 0x117

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStoppedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeStopDvr()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Z

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist write(J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeWrite(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist write([BJJ)J
    .locals 4

    add-long v0, p4, p2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeWrite([BJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
