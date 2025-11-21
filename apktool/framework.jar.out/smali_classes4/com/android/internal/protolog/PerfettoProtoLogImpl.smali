.class public abstract Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/IProtoLogClient$Stub;
.source "PerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field public static final blacklist NULL_STRING:Ljava/lang/String; = "null"

.field private static final blacklist STACK_SIZE_TO_PROTO_LOG_ENTRY_CALL:I = 0x6


# instance fields
.field protected blacklist mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private final blacklist mCollectStackTraceGroupCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

.field protected final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mDefaultLogLevelCounts:[I

.field protected final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mLogcatReady:Z

.field private final blacklist mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$ByAaNrwt9j6GynENDKrjHFNxzFg(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$connectToConfigurationService$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MQ_SVaXmDujMW5ISGNMGvz8bOeI(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZlqZnoHV-BCap7Ww-YBSQosJFUU(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mJFpMcp6YfnU0kpGiDT5HEXAhf0(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingFlush()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oLMGvk9n3jCtLVnANtrX7U02Jos(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qCUZOZspX3_hz0DsGTElovE4fEE(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "protolog_configuration"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogClient$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-direct {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method private blacklist collectStackTrace()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x6

    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private blacklist connectToConfigurationService()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private blacklist internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-boolean v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const-wide v4, 0x10d0000000dL

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iput-boolean v6, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    :cond_0
    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10b00000069L

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v12, 0x20b00000002L

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v14, 0x10d00000001L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v8

    invoke-virtual {v3, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x10900000003L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v3, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iget-object v8, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v2, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000069L

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v8, 0x20b00000001L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10600000001L

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v2, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10e00000003L

    iget v0, v0, Lcom/android/internal/protolog/common/LogLevel;->id:I

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10d00000004L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-virtual {v2, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000025L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private blacklist internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v0

    const-wide v2, 0x10d0000000dL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iput-boolean v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    :cond_0
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    const-wide v2, 0x10400000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10c00000002L

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000024L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$connectToConfigurationService$0()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/common/IProtoLogGroup;

    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v3

    aput-boolean v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to register ProtoLog client"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic blacklist lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$4(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Double;)V
    .locals 4

    const-wide v0, 0x20100000004L

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-wide v0, 0x20500000005L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method private synthetic blacklist lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    if-ge v5, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string/jumbo v5, "null"

    if-eqz v2, :cond_3

    array-length v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v0, :cond_3

    aget-object v9, v2, v7

    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v10

    invoke-static {v10, v8}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v10

    if-nez v10, :cond_2

    if-nez v9, :cond_1

    invoke-direct {v1, v3, v5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_3

    :cond_5
    const-wide/16 v10, 0x0

    :goto_3
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p1

    move-object/from16 v10, p2

    invoke-direct {v1, v3, v10, v13, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v13, p1

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v14

    move/from16 p5, v7

    const/4 v15, 0x0

    const-wide v6, 0x10400000008L

    move-wide/from16 v8, p6

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10b00000068L

    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10600000001L

    invoke-virtual {v14, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz v2, :cond_11

    new-instance v9, Landroid/util/LongArray;

    invoke-direct {v9}, Landroid/util/LongArray;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 p2, v15

    array-length v15, v2

    move/from16 v8, p2

    move v12, v8

    move/from16 v16, v0

    :goto_5
    if-ge v8, v15, :cond_f

    aget-object v0, v2, v8

    move-object/from16 p7, v0

    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v0

    invoke-static {v0, v12}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    :goto_6
    move v2, v12

    goto/16 :goto_9

    :cond_7
    if-nez p7, :cond_8

    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    if-nez p7, :cond_a

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move v2, v12

    goto :goto_8

    :cond_b
    if-nez p7, :cond_c

    move v2, v12

    const-wide/16 v12, 0x0

    :try_start_1
    invoke-virtual {v9, v12, v13}, Landroid/util/LongArray;->add(J)V

    goto :goto_9

    :cond_c
    move v2, v12

    const-wide/16 v12, 0x0

    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/util/LongArray;->add(J)V

    goto :goto_9

    :cond_d
    move v2, v12

    if-nez p7, :cond_e

    invoke-direct {v1, v3, v5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_e
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    :goto_7
    const-wide v12, 0x20d00000002L

    invoke-virtual {v14, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x1

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_8
    const-string v12, "ProtoLog"

    const-string v13, "Invalid ProtoLog paramsMask"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, p1

    move-object/from16 v2, p3

    goto/16 :goto_5

    :cond_f
    move/from16 v0, p2

    :goto_a
    invoke-virtual {v9}, Landroid/util/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const-wide v1, 0x21200000003L

    invoke-virtual {v9, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v12

    invoke-virtual {v14, v1, v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, v14}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, v14}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move/from16 v0, v16

    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-wide v1, 0x10d00000006L

    move/from16 v3, p5

    invoke-virtual {v14, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_12
    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    if-eqz v0, :cond_13

    const-wide v0, 0x10d0000000dL

    const/4 v2, 0x2

    invoke-virtual {v14, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_13
    :goto_b
    return-void
.end method

.method static synthetic blacklist lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTracingInstanceStop$7(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$toggleLogcat$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProtoLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$waitForInitialization$8()V
    .locals 2

    const-string v0, "ProtoLog"

    const-string v1, "Complete initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->collectStackTrace()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p0, v0

    iget-object p1, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :goto_2
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v3, v5, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Trying to log a protolog message with hash "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to logcat before the service is ready to accept such requests."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProtoLog"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FORMAT_ERROR \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\", args=("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p3

    const-string p4, ", "

    invoke-static {p4, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    move-wide v8, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    return-void
.end method

.method private blacklist onTracingFlush()V
    .locals 5

    const-string v0, "Executing onTracingFlush"

    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProtoLog background tracing service didn\'t finish gracefully."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to wait for tracing to finish"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->dumpViewerConfig()V

    :cond_1
    const-string p0, "Finished onTracingFlush"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private declared-synchronized blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string p1, "ProtoLog"

    const-string v0, "Executing onTracingInstanceStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {p1}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {p2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {v2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v2

    :goto_2
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string p1, "ProtoLog"

    const-string p2, "Finished onTracingInstanceStart"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string p1, "ProtoLog"

    const-string v0, "Executing onTracingInstanceStop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {p1}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {p2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {v2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v2

    :goto_2
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    const-string p1, "ProtoLog"

    const-string p2, "Finished onTracingInstanceStop"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private blacklist registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs blacklist setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No IProtoLogGroup named "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    return p2
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .locals 0

    const-string p0, "Unknown command"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Window manager logging options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 4

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Group with same id ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") registered twice. Potential duplicate or hash id collision."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static blacklist waitForInitialization()V
    .locals 3

    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    :try_start_0
    iget-object v0, v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ProtoLog"

    const-string v2, "Failed to wait for tracing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.end method

.method public blacklist disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnFlushCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    return-void
.end method

.method abstract blacklist dumpViewerConfig()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist enable()V
    .locals 2

    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->connectToConfigurationService()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    return-void
.end method

.method abstract blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
.end method

.method public blacklist getRegisteredGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget p0, p0, v1

    if-gtz p0, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-gtz p0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isProtoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p5, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    invoke-direct {v1, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/protolog/common/InvalidFormatStringException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    const-string p4, "ProtoLog"

    const-string v1, "Invalid protolog string format"

    invoke-static {p4, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const-string p4, "INVALID MESSAGE"

    invoke-direct {p3, p4, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string p0, "Command deprecated. Please use \'cmd protolog_configuration\' instead."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v4, v2

    goto :goto_2

    :sswitch_0
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_2
    const-string v4, "disable-text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_3
    const-string v5, "enable-text"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_0
    const-string p0, "Command not supported. Please start and stop ProtoLog tracing with Perfetto."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_3
        -0x3d842b0e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist readyToLogToLogcat()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    return-void
.end method

.method protected blacklist validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/common/IProtoLogGroup;

    if-nez v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "No IProtoLogGroup named "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
