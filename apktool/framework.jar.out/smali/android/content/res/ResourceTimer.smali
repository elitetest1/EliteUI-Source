.class public final Landroid/content/res/ResourceTimer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourceTimer$Config;,
        Landroid/content/res/ResourceTimer$Timer;
    }
.end annotation


# static fields
.field private static blacklist ENABLE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResourceTimer"

.field private static blacklist mHandler:Landroid/os/Handler; = null

.field private static blacklist sApiMap:[I = null

.field private static blacklist sConfig:Landroid/content/res/ResourceTimer$Config; = null

.field private static blacklist sCurrentPoint:I = 0x0

.field private static blacklist sEnabled:Z = true

.field private static blacklist sIncrementalMetrics:Z = true

.field private static blacklist sLastUpdated:J

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sManager:Landroid/content/res/ResourceTimer;

.field private static final blacklist sProcessStart:J

.field private static final blacklist sPublicationPoints:[J

.field private static blacklist sTimers:[Landroid/content/res/ResourceTimer$Timer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Landroid/content/res/ResourceTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sProcessStart:J

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void

    :array_0
    .array-data 8
        0x5
        0x3c
        0x2d0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ResourceTimer constructor"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 10

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    const-string p0, "\nDumping ResourceTimers"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    :try_start_2
    const-string p0, "  Timers are not enabled in this process"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :cond_1
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "-refresh"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p1}, Landroid/content/res/ResourceTimer;->update(Z)V

    sget-wide v3, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    sget-wide v5, Landroid/content/res/ResourceTimer;->sProcessStart:J

    sub-long/2addr v3, v5

    const-string p1, "  config runtime=%d proc=%s\n"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    sget-object p1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v0, p1

    if-ge v2, v0, :cond_3

    aget-object p1, p1, v2

    iget v0, p1, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v0, v0, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v0, v2

    const-string v0, "  stats timer=%s cnt=%d avg=%d min=%d max=%d pval=%s largest=%s\n"

    iget v4, p1, Landroid/content/res/ResourceTimer$Timer;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p1, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget v7, p1, Landroid/content/res/ResourceTimer$Timer;->count:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p1, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v8}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p1, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    invoke-static {p1}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static blacklist handleMessage(Landroid/os/Message;)V
    .locals 1

    sget-object p0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/content/res/ResourceTimer;->publish()V

    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native blacklist nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I
.end method

.method private static native blacklist nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I
.end method

.method private static blacklist packedString([I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\\]\\[ ]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist publish()V
    .locals 20

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/ResourceTimer;->update(Z)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    iget v4, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-lez v4, :cond_0

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v4, v4, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v6}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s count=%d pvalues=%s"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResourceTimer"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v6, v4, v2

    if-eqz v6, :cond_0

    iget v7, v3, Landroid/content/res/ResourceTimer$Timer;->count:I

    iget-wide v8, v3, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v10, v4, v1

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v11, v4, v0

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v5, 0x2

    aget v12, v4, v5

    iget-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v13, 0x3

    aget v4, v4, v13

    iget-object v14, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v14, v14, v1

    iget-object v15, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v15, v15, v0

    move/from16 v19, v0

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v16, v0, v5

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v17, v0, v13

    iget-object v0, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    const/4 v3, 0x4

    aget v18, v0, v3

    const/16 v5, 0x205

    move v13, v4

    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIIIIIIIII)V

    goto :goto_1

    :cond_0
    move/from16 v19, v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v19

    goto :goto_0

    :cond_1
    move/from16 v19, v0

    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    return-void
.end method

.method public static blacklist start()V
    .locals 6

    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/content/res/ResourceTimer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/res/ResourceTimer$Config;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$Config;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    invoke-static {v1}, Landroid/content/res/ResourceTimer;->nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I

    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [Landroid/content/res/ResourceTimer$Timer;

    sput-object v1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    new-instance v5, Landroid/content/res/ResourceTimer$Timer;

    invoke-direct {v5, v2}, Landroid/content/res/ResourceTimer$Timer;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    aput-object v5, v4, v3

    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v4, v4, v3

    sget-object v5, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v5, v5, Landroid/content/res/ResourceTimer$Config;->maxBuckets:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    sget-object v4, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v4, v4, v3

    sget-object v5, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v5, v5, Landroid/content/res/ResourceTimer$Config;->maxLargest:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v2, v2, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v2, v2, [I

    sput-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    move v2, v1

    :goto_1
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "GetResourceValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "RetrieveAttributes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v4, 0x2

    aput v4, v3, v2

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aput v1, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    sput v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    monitor-exit v0

    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResourceTimer started too early"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist startTimer()V
    .locals 5

    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v0, v1, v0

    goto :goto_0

    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_0
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    sget-boolean v2, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    :cond_1
    sget-object v2, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    sget-wide v3, Landroid/content/res/ResourceTimer;->sProcessStart:J

    add-long/2addr v3, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private static blacklist update(Z)V
    .locals 2

    sget-object v0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    invoke-static {v0, p0}, Landroid/content/res/ResourceTimer;->nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void
.end method
