.class final Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingPerfettoImpl.java"


# instance fields
.field private final blacklist mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

.field private final blacklist mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Landroid/tracing/inputmethod/InputMethodDataSource;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v2, v3, v4}, Landroid/tracing/inputmethod/InputMethodDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    sget-object p0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {p0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    new-instance p0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setNoFlush(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setWillNotifyOnStop(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/tracing/inputmethod/InputMethodDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$triggerClientDump$0(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[BLandroid/tracing/perfetto/TracingContext;)V
    .locals 6

    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10b00000070L

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000002L

    invoke-virtual {p3, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10b00000003L

    invoke-virtual {p3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    invoke-virtual {p3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method static synthetic blacklist lambda$triggerManagerServiceDump$2(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    invoke-virtual {p2}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p2

    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10b00000070L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000003L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000002L

    invoke-virtual {p2, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method static synthetic blacklist lambda$triggerServiceDump$1(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[BLandroid/tracing/perfetto/TracingContext;)V
    .locals 6

    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10b00000070L

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000002L

    invoke-virtual {p3, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 0

    return-void
.end method

.method public blacklist isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "inputmethod_client_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "inputmethod_manager_service_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "inputmethod_service_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
