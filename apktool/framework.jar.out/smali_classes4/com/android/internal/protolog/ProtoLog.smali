.class public Lcom/android/internal/protolog/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static blacklist REQUIRE_PROTOLOGTOOL:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private static final blacklist sInitLock:Ljava/lang/Object;

.field private static blacklist sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-virtual {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->enable()V
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized blacklist getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;
    .locals 3

    const-class v0, Lcom/android/internal/protolog/ProtoLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v1}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v2, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-object v0
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->logOnlyToLogcat()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;

    invoke-direct {p0}, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;-><init>()V

    sput-object p0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/internal/protolog/ProtoLog;->initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method private static varargs blacklist initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLog;->getRegisteredGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLog;->createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    instance-of v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->disable()V

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

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    return p0
.end method

.method private static blacklist logOnlyToLogcat()Z
    .locals 1

    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist logOnlyToLogcat$ravenwood()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static varargs blacklist logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p0}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to use ProtoLog before it is initialized in this process."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
