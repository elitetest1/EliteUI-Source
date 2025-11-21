.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OperationLog"
.end annotation


# static fields
.field private static final greylist-max-o COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final greylist-max-o COOKIE_INDEX_MASK:I = 0xff

.field private static final blacklist LONG_OPERATION_THRESHOLD_MS:J = 0x7d0L

.field private static final blacklist MAX_LONG_OPERATIONS:I = 0xa

.field private static final greylist-max-o MAX_RECENT_OPERATIONS:I = 0x1e


# instance fields
.field private final blacklist mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final blacklist mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private greylist-max-o mGeneration:I

.field private greylist-max-o mIndex:I

.field private final blacklist mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

.field private final blacklist mLongOperations:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/database/sqlite/SQLiteConnection$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private blacklist mResultLong:J

.field private blacklist mResultString:Ljava/lang/String;

.field private blacklist mTotalLongOperations:I

.field private final blacklist mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$Xgq3hBDEhM_ztShleD13PdzKmX4(Landroid/database/sqlite/SQLiteConnection$OperationLog;)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x1e

    new-array p2, p2, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    const/4 p2, -0x1

    iput p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    const/4 p2, 0x0

    iput p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    new-instance p1, Lcom/android/internal/util/RingBuffer;

    new-instance v0, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V

    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0xa

    invoke-direct {p1, v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    iput p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    new-instance p1, Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$RateLimiter;-><init>(JI)V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iput-object p4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    return-void
.end method

.method private blacklist dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist dumpLongLocked(Landroid/util/Printer;)V
    .locals 2

    const-string v0, "  Operations exceeding 2000ms:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "    <none>"

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist dumpRecentLocked(Landroid/util/Printer;)V
    .locals 6

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    if-nez v1, :cond_0

    const-string p0, "    <none>"

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    :goto_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_1

    :cond_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, p1, v1, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist endOperationDeferLogLocked(IIII)Z
    .locals 5

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v1

    iput-wide v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iput p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFilledRows:I

    iput p3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCountedRows:I

    iput p4, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTotalRows:I

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object p2

    iget-wide p3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {p2, p3, p4}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p2, p2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {p2}, Landroid/database/sqlite/trace/SQLiteTrace;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    iput p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTid:I

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/database/sqlite/trace/SQLiteTrace;->trace(Landroid/database/sqlite/SQLiteConnection$Operation;Ljava/lang/String;)V

    :cond_1
    sget-boolean p0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz p0, :cond_2

    iget-wide p0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private blacklist finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    iget-wide v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iput-wide v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    iget p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    :cond_0
    return-wide v1
.end method

.method private greylist-max-o getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 1

    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)[Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 0

    new-array p0, p0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    return-object p0
.end method

.method private greylist-max-o logOperationLocked(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    iput-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, ", hash="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-nez p2, :cond_4

    iget-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {p2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->shouldLogQueryPlan()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$mprintQueryPlan(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->shouldLogIndexRecommendation()Z

    move-result p2

    if-eqz p2, :cond_4

    :try_start_0
    new-instance p2, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object p1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {p2, v0, p1, p0}, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;-><init>(Landroid/database/sqlite/SQLiteConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteConnection$SQLiteExpertModule;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private greylist-max-o newOperationCookieLocked(I)I
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 p0, v0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 4

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    new-instance v2, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v1, v0

    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->start()V

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v1

    iput v1, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    return-object v2
.end method


# virtual methods
.method public greylist-max-o beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCallingPid:I

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmConnectionId(Landroid/database/sqlite/SQLiteConnection;)I

    move-result p0

    iput p0, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mConnectionId:I

    if-eqz p3, :cond_2

    iget-object p0, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length p1, p3

    if-ge p0, p1, :cond_2

    aget-object p1, p3, p0

    sget-boolean p2, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_ENABLE:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    instance-of p2, p1, [B

    if-eqz p2, :cond_1

    iget-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 p0, 0x100000

    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    iput-boolean p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    iget-boolean p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz p2, :cond_3

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object p2

    iget p3, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_3
    iget p0, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist beginTransaction(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    iget-boolean p0, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz p0, :cond_0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object p0

    iget p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

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

.method public greylist-max-o describeCurrentOperation()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object p0, v1, p0

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
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

.method public blacklist dump(Landroid/util/Printer;)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpRecentLocked(Landroid/util/Printer;)V

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpLongLocked(Landroid/util/Printer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o endOperation(I)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

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

.method public greylist-max-o endOperationDeferLog(I)Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist endOperationDeferLog(IIII)Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist endTransaction(Z)Z
    .locals 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v1

    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    iget p1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    :cond_1
    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->setEmpty()V

    sget-boolean p0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz p0, :cond_2

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o failOperation(ILjava/lang/Exception;)V
    .locals 2

    const-string v0, "Corruption detected - isPrimary: "

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    :cond_0
    if-eqz p2, :cond_1

    instance-of p1, p2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz p1, :cond_1

    const-string p1, "SQLiteConnection"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", address: @"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getTotalLongOperations()J
    .locals 2

    iget p0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public greylist-max-o logOperation(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setResult(J)V
    .locals 0

    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    return-void
.end method

.method public blacklist setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    return-void
.end method
