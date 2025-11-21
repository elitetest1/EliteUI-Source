.class public Lcom/android/internal/os/ApplicationSharedMemory;
.super Ljava/lang/Object;
.source "ApplicationSharedMemory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist INVALID_NETWORK_TIME:J = -0x1L

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApplicationSharedMemory"

.field public static blacklist sInstance:Lcom/android/internal/os/ApplicationSharedMemory;


# instance fields
.field private blacklist mFileDescriptor:Ljava/io/FileDescriptor;

.field private final blacklist mMutable:Z

.field private volatile blacklist mPtr:J


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput-boolean p2, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    iput-wide p3, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    return-void
.end method

.method private blacklist checkFileOpen()V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "File descriptor is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkMapped()V
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instance is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkMutable()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    iget-boolean p0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not mutable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist create()Lcom/android/internal/os/ApplicationSharedMemory;
    .locals 5

    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeCreate()I

    move-result v0

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeMap(IZ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeInit(J)V

    new-instance v0, Lcom/android/internal/os/ApplicationSharedMemory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ApplicationSharedMemory;-><init>(Ljava/io/FileDescriptor;ZJ)V

    return-object v0
.end method

.method public static blacklist fromFileDescriptor(Ljava/io/FileDescriptor;Z)Lcom/android/internal/os/ApplicationSharedMemory;
    .locals 3

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeMap(IZ)J

    move-result-wide v0

    new-instance v2, Lcom/android/internal/os/ApplicationSharedMemory;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;-><init>(Ljava/io/FileDescriptor;ZJ)V

    return-object v2
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/ApplicationSharedMemory;
    .locals 2

    sget-object v0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApplicationSharedMemory not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nativeCreate()I
.end method

.method private static native blacklist nativeDupAsReadOnly(I)I
.end method

.method public static native blacklist nativeGetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSystemNonceBlock(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeInit(J)V
.end method

.method private static native blacklist nativeMap(IZ)J
.end method

.method private static native blacklist nativeReadSystemFeaturesCache(J)[I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeUnmap(J)V
.end method

.method private static native blacklist nativeWriteSystemFeaturesCache(J[I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/internal/os/ApplicationSharedMemory;->sInstance:Lcom/android/internal/os/ApplicationSharedMemory;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ApplicationSharedMemory already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist clearLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V

    return-void
.end method

.method public whitelist test-api close()V
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeUnmap(J)V

    iput-wide v2, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    :cond_1
    return-void
.end method

.method public blacklist closeFileDescriptor()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    :cond_0
    return-void
.end method

.method public blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkFileOpen()V

    iget-object p0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public blacklist getLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/DateTimeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeGetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/time/DateTimeException;

    const-string v0, "No network time available"

    invoke-direct {p0, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getReadOnlyFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkFileOpen()V

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iget-object p0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeDupAsReadOnly(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    return-object v0
.end method

.method public blacklist getSystemNonceBlock()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeGetSystemNonceBlock(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist isMapped()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMutable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->isMapped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mMutable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readSystemFeaturesCache()[I
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMapped()V

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeReadSystemFeaturesCache(J)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist setLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeSetLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(JJ)V

    return-void
.end method

.method public blacklist writeSystemFeaturesCache([I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/ApplicationSharedMemory;->checkMutable()V

    iget-wide v0, p0, Lcom/android/internal/os/ApplicationSharedMemory;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/ApplicationSharedMemory;->nativeWriteSystemFeaturesCache(J[I)V

    return-void
.end method
