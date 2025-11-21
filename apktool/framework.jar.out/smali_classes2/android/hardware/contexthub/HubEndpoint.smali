.class public Landroid/hardware/contexthub/HubEndpoint;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpoint$Builder;,
        Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;,
        Landroid/hardware/contexthub/HubEndpoint$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_CLOSE_ENDPOINT_SESSION_REQUESTED:I = 0x4

.field public static final whitelist REASON_ENDPOINT_INVALID:I = 0x5

.field public static final whitelist REASON_ENDPOINT_STOPPED:I = 0x6

.field public static final whitelist REASON_FAILURE:I = 0x0

.field public static final whitelist REASON_OPEN_ENDPOINT_SESSION_REQUEST_REJECTED:I = 0x3

.field public static final whitelist REASON_PERMISSION_DENIED:I = 0x9

.field private static final blacklist TAG:Ljava/lang/String; = "HubEndpoint"


# instance fields
.field private final blacklist mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/contexthub/HubEndpointSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private final blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private final blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field private blacklist mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/HubEndpoint$1;-><init>(Landroid/hardware/contexthub/HubEndpoint;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "HubEndpoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeSession: failed to close session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist getLifecycleCallback()Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object p0
.end method

.method public whitelist getMessageCallback()Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object p0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result p0

    return p0
.end method

.method public blacklist openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result v3

    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v6, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    :try_start_2
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    iget-object p0, v4, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v5, p1

    :goto_0
    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, p1

    :goto_1
    move-object p0, v0

    const-string p1, "HubEndpoint"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "openSession: failed to open session to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist register(Landroid/hardware/location/IContextHubService;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpoint;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "HubEndpoint"

    const-string v0, "registerEndpoint: failed to register endpoint"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method blacklist sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v0

    invoke-interface {p0, v0, p2, p3}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendMessage: failed to send message session="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HubEndpoint"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregister()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->unregister()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "HubEndpoint"

    const-string v1, "unregisterEndpoint: failed to unregister endpoint"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
