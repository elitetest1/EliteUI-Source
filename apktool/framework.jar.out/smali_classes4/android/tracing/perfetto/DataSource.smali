.class public abstract Landroid/tracing/perfetto/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataSourceInstanceType:",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "TlsStateType:",
        "Ljava/lang/Object;",
        "IncrementalStateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mNativeObj:J

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/tracing/perfetto/DataSource;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/tracing/perfetto/DataSource;->nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    return-void
.end method

.method private blacklist createInstance([BI)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TDataSourceInstanceType;"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Landroid/tracing/perfetto/DataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeFlushAll(J)V
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeGetPerfettoDsInstanceIndex(J)I
.end method

.method private static native blacklist nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBegin(J)Z
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBreak(J)V
.end method

.method private static native blacklist nativePerfettoDsTraceIterateNext(J)Z
.end method

.method private static native blacklist nativeRegisterDataSource(JIZZ)V
.end method

.method private static native blacklist nativeReleasePerfettoInstanceLocked(JI)V
.end method

.method private static native blacklist nativeWritePackets(J[[B)V
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "TDataSourceInstanceType;>;)TIncrementalStateType;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "I)TDataSourceInstanceType;"
        }
    .end annotation
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "TDataSourceInstanceType;>;)TTlsStateType;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final blacklist flush()V
    .locals 2

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativeFlushAll(J)V

    return-void
.end method

.method public blacklist getDataSourceInstanceLocked(I)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataSourceInstanceType;"
        }
    .end annotation

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p0

    return-object p0
.end method

.method public blacklist register(Landroid/tracing/perfetto/DataSourceParams;)V
    .locals 3

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    iget p0, p1, Landroid/tracing/perfetto/DataSourceParams;->bufferExhaustedPolicy:I

    iget-boolean v2, p1, Landroid/tracing/perfetto/DataSourceParams;->willNotifyOnStop:Z

    iget-boolean p1, p1, Landroid/tracing/perfetto/DataSourceParams;->noFlush:Z

    invoke-static {v0, v1, p0, v2, p1}, Landroid/tracing/perfetto/DataSource;->nativeRegisterDataSource(JIZZ)V

    return-void
.end method

.method protected blacklist releaseDataSourceInstance(I)V
    .locals 2

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeReleasePerfettoInstanceLocked(JI)V

    return-void
.end method

.method public final blacklist trace(Landroid/tracing/perfetto/TraceFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TraceFunction<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBegin(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoDsInstanceIndex(J)I

    move-result v0

    new-instance v1, Landroid/tracing/perfetto/TracingContext;

    invoke-direct {v1, p0, v0}, Landroid/tracing/perfetto/TracingContext;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    invoke-interface {p1, v1}, Landroid/tracing/perfetto/TraceFunction;->trace(Landroid/tracing/perfetto/TracingContext;)V

    iget-wide v2, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-virtual {v1}, Landroid/tracing/perfetto/TracingContext;->getAndClearAllPendingTracePackets()[[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/tracing/perfetto/DataSource;->nativeWritePackets(J[[B)V

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateNext(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-wide p0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {p0, p1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    throw p1
.end method
