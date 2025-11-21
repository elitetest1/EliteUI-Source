.class public Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.source "UnprocessedPerfettoProtoLogImpl.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-virtual {p0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->readyToLogToLogcat()V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/internal/protolog/common/IProtoLog;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .locals 0

    new-instance p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;-><init>()V

    return-object p0
.end method

.method blacklist dumpViewerConfig()V
    .locals 0

    return-void
.end method

.method blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to decode message for logcat. Message not available without ViewerConfig to decode the hash."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
