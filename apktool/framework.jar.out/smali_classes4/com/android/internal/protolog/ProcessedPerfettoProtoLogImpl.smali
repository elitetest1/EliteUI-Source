.class public Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.source "ProcessedPerfettoProtoLogImpl.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PerfettoProtoLogImpl"


# instance fields
.field private final blacklist mViewerConfigFilePath:Ljava/lang/String;

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;


# direct methods
.method public static synthetic blacklist $r8$lambda$EEQk26-4kQiGHJuKWdjm5Bq-N2Q(Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->lambda$loadLogcatGroupsViewerConfig$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    new-instance v3, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;

    invoke-direct {v3, p2}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    iput-object p2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    new-instance p1, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {p1, p3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    iput-object p1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {p0, p5}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogViewerConfigReader;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p5, p6, p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    iput-object p2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    iput-object p4, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {p0, p6}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method private blacklist getReasonForFailureToGetMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .locals 5

    const-string v0, "Failed to decode message for logcat logging. Message hash ("

    const-string v1, "Failed to decode message for logcat. Message hash ("

    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "Trying to get message from null message hash"

    return-object p0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->messageHashIsAvailableInFile(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not available in viewerConfig file ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). This might be due to the viewer config file and the executing code being out of sync."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") was available in the viewerConfig file ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") but wasn\'t loaded into memory from file before decoding! This is likely a bug."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to get string message to log but could not identify the root cause due to an IO error in reading the viewer config file."

    return-object p0
.end method

.method private synthetic blacklist lambda$loadLogcatGroupsViewerConfig$0(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->readyToLogToLogcat()V

    return-void
.end method

.method private blacklist loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .locals 1

    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;-><init>()V

    iget-object p0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method blacklist dumpViewerConfig()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dumping viewer config to trace from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfettoProtoLogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    iget-object v2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-static {v0, v2}, Lcom/android/internal/protolog/Utils;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Successfully dumped viewer config to trace from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {p1, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessage(Lcom/android/internal/protolog/ProtoLogViewerConfigReader;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->getReasonForFailureToGetMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p0

    return p0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V

    return v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to stop logging to logcat"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
