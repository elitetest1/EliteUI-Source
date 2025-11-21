.class public Lcom/android/internal/os/logging/MetricsLoggerWrapper;
.super Ljava/lang/Object;
.source "MetricsLoggerWrapper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logAppOverlayEnter(ILjava/lang/String;ZIZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/16 p2, 0x7f6

    const/16 v0, 0x3b

    const/4 v1, 0x1

    if-eq p3, p2, :cond_0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p2, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method public static blacklist logAppOverlayExit(ILjava/lang/String;ZIZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/16 p2, 0x7f6

    const/4 v0, 0x2

    const/16 v1, 0x3b

    if-eq p3, p2, :cond_0

    const/4 p2, 0x1

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p2, 0x0

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method public static blacklist logPostGcMemorySnapshot()V
    .locals 15

    invoke-static {}, Lcom/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    new-array v11, v1, [J

    new-array v12, v1, [J

    new-array v13, v1, [J

    new-array v14, v1, [J

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/util/NativeAllocationRegistry$Metrics;

    invoke-virtual {v2}, Llibcore/util/NativeAllocationRegistry$Metrics;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v1

    invoke-virtual {v2}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v5

    aput-wide v5, v11, v1

    invoke-virtual {v2}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v5

    aput-wide v5, v12, v1

    invoke-virtual {v2}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v5

    aput-wide v5, v13, v1

    invoke-virtual {v2}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v5

    aput-wide v5, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs()Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs()I

    move-result v5

    iget v2, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    iget v6, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v7, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v8, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v1, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v0, v0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v9, v1, v0

    const/16 v1, 0x39c

    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIII[Ljava/lang/String;[J[J[J[J)V

    return-void
.end method
