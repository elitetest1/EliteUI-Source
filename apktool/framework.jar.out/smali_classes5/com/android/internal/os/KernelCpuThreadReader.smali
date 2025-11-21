.class public Lcom/android/internal/os/KernelCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReader$Injector;,
        Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;,
        Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    }
.end annotation


# static fields
.field private static final blacklist CPU_STATISTICS_FILENAME:Ljava/lang/String; = "time_in_state"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_PROCESS_NAME:Ljava/lang/String; = "unknown_process"

.field private static final blacklist DEFAULT_PROC_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_THREAD_NAME:Ljava/lang/String; = "unknown_thread"

.field private static final blacklist ID_ERROR:I = -0x1

.field private static final blacklist PROCESS_DIRECTORY_FILTER:Ljava/lang/String; = "[0-9]*"

.field private static final blacklist PROCESS_NAME_FILENAME:Ljava/lang/String; = "cmdline"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReader"

.field private static final blacklist THREAD_NAME_FILENAME:Ljava/lang/String; = "comm"


# instance fields
.field private blacklist mFrequenciesKhz:[I

.field private blacklist mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

.field private final blacklist mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

.field private final blacklist mProcPath:Ljava/nio/file/Path;

.field private final blacklist mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

.field private blacklist mUidPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/proc"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    const-string/jumbo v1, "self/time_in_state"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lcom/android/internal/os/KernelCpuThreadReader$Injector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    new-instance p2, Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-direct {p2, p4}, Lcom/android/internal/os/ProcTimeInStateReader;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    iput-object p5, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    return-void
.end method

.method public static blacklist create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/os/KernelCpuThreadReader;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader;

    sget-object v3, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    sget-object v4, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-direct {v5}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;-><init>()V

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuThreadReader;-><init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "KernelCpuThreadReader"

    const-string v0, "Failed to initialize KernelCpuThreadReader"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .locals 5

    const-string/jumbo v0, "task"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-direct {p0, v4}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0, p3, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;-><init>(ILjava/lang/String;ILjava/util/ArrayList;)V

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v2
.end method

.method private blacklist getProcessId(Ljava/nio/file/Path;)I
    .locals 2

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as process ID"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KernelCpuThreadReader"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    const-string p0, "cmdline"

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "unknown_process"

    return-object p0
.end method

.method private blacklist getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "time_in_state"

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v3, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->getUsageTimesMillis(Ljava/nio/file/Path;)[J

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketValues([J)[I

    move-result-object p0

    goto :goto_1

    :cond_1
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-wide v3, p1, v0

    long-to-int v3, v3

    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    invoke-direct {p1, v1, v2, p0}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "KernelCpuThreadReader"

    const-string v1, "Failed to parse thread ID when iterating over /proc/*/task"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private blacklist getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    const-string p0, "comm"

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "unknown_thread"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-object p0
.end method

.method public blacklist getProcessCpuUsage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    const-string v0, "KernelCpuThreadReader"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    const-string v4, "[0-9]*"

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessId(Ljava/nio/file/Path;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;->getUidForPid(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    if-ne v6, v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Didn\'t successfully get any process CPU information for UIDs specified"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to iterate over process paths"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method blacklist setNumBuckets(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcTimeInStateReader;->getFrequenciesKhz()[J

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;-><init>([JI)V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketFrequencies([J)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    array-length p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    aget-wide v2, v0, p1

    long-to-int v2, v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist setUidPredicate(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    return-void
.end method
