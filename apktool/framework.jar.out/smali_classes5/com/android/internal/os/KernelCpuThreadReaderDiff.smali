.class public Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    }
.end annotation


# static fields
.field private static final blacklist OTHER_THREADS_ID:I = -0x1

.field private static final blacklist OTHER_THREADS_NAME:Ljava/lang/String; = "__OTHER_THREADS"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReaderDiff"


# instance fields
.field private blacklist mMinimumTotalCpuUsageMillis:I

.field private blacklist mPreviousCpuUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mReader:Lcom/android/internal/os/KernelCpuThreadReader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/KernelCpuThreadReader;

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-void
.end method

.method private static blacklist addToCpuUsage([I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    iget v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->totalCpuUsage([I)I

    move-result v5

    if-le v4, v5, :cond_1

    if-nez v1, :cond_0

    iget-object v1, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v1, v1

    new-array v1, v1, [I

    :cond_0
    iget-object v3, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v1, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->addToCpuUsage([I[I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    const/4 v2, -0x1

    const-string v3, "__OTHER_THREADS"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object v0, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    return-void
.end method

.method private static blacklist changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v5, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v2, v2

    new-array v2, v2, [I

    :cond_0
    iget-object v3, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->cpuTimeDiff([I[I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist cpuTimeDiff([I[I)[I
    .locals 4

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static blacklist createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    move v4, v1

    :goto_1
    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    new-instance v6, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v7, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v8, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v9, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static blacklist totalCpuUsage([I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {p0}, Lcom/android/internal/os/KernelCpuThreadReader;->getCpuFrequenciesKhz()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getProcessCpuUsageDiffed()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V

    invoke-direct {p0, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    throw v0
.end method

.method blacklist setMinimumTotalCpuUsageMillis(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Negative minimumTotalCpuUsageMillis: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KernelCpuThreadReaderDiff"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    return-void
.end method
