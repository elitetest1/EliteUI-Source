.class public Landroid/telephony/DropBoxManagerLoggerBackend;
.super Ljava/lang/Object;
.source "DropBoxManagerLoggerBackend.java"

# interfaces
.implements Landroid/telephony/PersistentLoggerBackend;


# static fields
.field private static final blacklist BUFFER_SIZE_BYTES:I = 0x7d000

.field private static final blacklist DROPBOX_TAG:Ljava/lang/String; = "DropBoxManagerLoggerBackend"

.field private static final blacklist LOCAL_ZONE_ID:Ljava/time/ZoneId;

.field private static final blacklist LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final blacklist MIN_BUFFER_BYTES_FOR_FLUSH:I = 0x1400

.field private static final blacklist TAG:Ljava/lang/String; = "DropBoxManagerLoggerBackend"

.field private static blacklist sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;


# instance fields
.field private final blacklist mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferStartTime:J

.field private final blacklist mDropBoxManager:Landroid/os/DropBoxManager;

.field private final blacklist mDropBoxManagerLoggingEnabled:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIsLoggingEnabled:Z

.field private final blacklist mLogBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/telephony/DropBoxManagerLoggerBackend;->LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Landroid/telephony/DropBoxManagerLoggerBackend;->LOCAL_ZONE_ID:Ljava/time/ZoneId;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DropBoxManagerLoggerBackend"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    iput-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManager:Landroid/os/DropBoxManager;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/telephony/DropBoxManagerLoggerBackend;->persistentLoggingEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    return-void
.end method

.method private declared-synchronized blacklist bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    :cond_1
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x7d000

    if-lt p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/DropBoxManagerLoggerBackend;->flushAsync()V

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private blacklist formatLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist formatTimestamp(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Landroid/telephony/DropBoxManagerLoggerBackend;->LOCAL_ZONE_ID:Ljava/time/ZoneId;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    sget-object p1, Landroid/telephony/DropBoxManagerLoggerBackend;->LOG_TIMESTAMP_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Landroid/telephony/DropBoxManagerLoggerBackend;
    .locals 2

    const-class v0, Landroid/telephony/DropBoxManagerLoggerBackend;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;

    if-nez v1, :cond_0

    new-instance v1, Landroid/telephony/DropBoxManagerLoggerBackend;

    invoke-direct {v1, p0}, Landroid/telephony/DropBoxManagerLoggerBackend;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;

    :cond_0
    sget-object p0, Landroid/telephony/DropBoxManagerLoggerBackend;->sInstance:Landroid/telephony/DropBoxManagerLoggerBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic blacklist lambda$formatLog$0(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist persistentLoggingEnabled(Landroid/content/Context;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110164

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DropBoxManagerLoggerBackend"

    const-string p1, "Persistent logging config not found"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "D"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "E"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "E"

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public blacklist flush()V
    .locals 7

    const-string v0, "Failed to flush logs of length "

    const-string v1, "Flushing logs from "

    iget-boolean v2, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x1400

    if-ge v3, v4, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    const-string v3, "DropBoxManagerLoggerBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    invoke-direct {p0, v5, v6}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/telephony/DropBoxManagerLoggerBackend;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string v3, "Telephony"

    iget-object v4, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "DropBoxManagerLoggerBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to DropBoxManager"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mLogBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mBufferStartTime:J

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public blacklist flushAsync()V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telephony/DropBoxManagerLoggerBackend$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/DropBoxManagerLoggerBackend;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "I"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public blacklist setLoggingEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "toggle logging: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropBoxManagerLoggerBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mIsLoggingEnabled:Z

    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "W"

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/DropBoxManagerLoggerBackend;->mDropBoxManagerLoggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "W"

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/telephony/DropBoxManagerLoggerBackend;->bufferLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method
