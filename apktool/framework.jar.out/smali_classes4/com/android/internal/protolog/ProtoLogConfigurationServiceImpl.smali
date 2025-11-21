.class public Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;
.super Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;
.source "ProtoLogConfigurationServiceImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/ProtoLogConfigurationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogConfigurationService"


# instance fields
.field private final blacklist mClientConfigFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/protolog/IProtoLogClient;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigFileCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mGroupToClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/IProtoLogClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLogGroupToLogcatStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegisteredGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningInstances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;


# direct methods
.method public static synthetic blacklist $r8$lambda$Y9-F_dA-v6oN1BnST5AZw_K_H2Q(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d0EC1boA3wrFcn2Wn5VRApjmAio(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->lambda$registerClient$0(Lcom/android/internal/protolog/IProtoLogClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pqxEk5H96a4bhYyk47EqCgWSXK4(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wPtt8uiPRcPZf-oNAXsjhpBvE3c(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wgsgMaWPHRE9gdXcv3dRKmiaLrs(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceFlush()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V
    .locals 1

    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Ljava/lang/Runnable;)V

    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    return-void
.end method

.method private static blacklist dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/protolog/Utils;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    return-void
.end method

.method static synthetic blacklist lambda$dumpViewerConfig$1(Ljava/lang/String;)Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;-><init>(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load viewer config file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$registerClient$0(Lcom/android/internal/protolog/IProtoLogClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onClientBinderDeath(Lcom/android/internal/protolog/IProtoLogClient;)V

    return-void
.end method

.method private blacklist onClientBinderDeath(Lcom/android/internal/protolog/IProtoLogClient;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist onTracingInstanceFlush()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist registerGroups(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    aget-boolean v2, p3, v0

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v2, :cond_1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected groups and logcatStatuses to have the same length, but groups has length "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and logcatStatuses has length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist registerViewerConfigFile(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientConfigFiles:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mGroupToClients:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Attempting to toggle log to logcat for group "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with no registered clients. This is a no-op."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProtoLogConfigurationService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WARNING: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/protolog/IProtoLogClient;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/IProtoLogClient;

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggling logcat logging for client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/protolog/IProtoLogClient;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " for groups: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3, p2, v4}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    const-string v3, "- Done"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p2, "- Failed"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to toggle logcat status for groups on client"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    array-length p1, p3

    :goto_4
    if-ge v2, p1, :cond_4

    aget-object v0, p3, v2

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static blacklist writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected field id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide v4, 0x10d00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    const-wide v4, 0x10900000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected field id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide v4, 0x10d00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_2
    const-wide v4, 0x10e00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_3
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-wide v4, 0x10600000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public varargs blacklist disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    return-void
.end method

.method public varargs blacklist enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getGroups()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isLoggingToLogcat(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to get logcat logging status of non-registered group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/protolog/ProtoLogCommandHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public blacklist registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/internal/protolog/IProtoLogClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;Lcom/android/internal/protolog/IProtoLogClient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerViewerConfigFile(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    iget-object p2, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerGroups(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V

    return-void
.end method
