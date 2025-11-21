.class Landroid/hardware/contexthub/HubEndpoint$1;
.super Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/contexthub/HubEndpoint;


# direct methods
.method public static synthetic blacklist $r8$lambda$WDKl2F8IpddfwlxwBCm8X8FXrt0(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wgr7HfV80R43MKHm3AygViFSD-M(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEFeKd02U6OLgKkDFA207DPz-qo(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fcciXbBnQxMabvDoOIyXX7spePM(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIE-glYnkToYq9p5Ej6kxJdMhQ4(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 8

    const-string v0, "onSessionOpenRequestResult: session already exists, id="

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    if-eqz v2, :cond_0

    const-string p0, "HubEndpoint"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v4}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v5

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, v3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v2}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/HubEndpointSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "HubEndpoint"

    const-string v0, "IllegalStateException while calling callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist invokeCallbackFinished()V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$acceptSession$5(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSessionRequestComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeCallbackFinished$8(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->onCallbackFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointMessageCallback;->onMessageReceived(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionClosed(Landroid/hardware/contexthub/HubEndpointSession;I)V

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpenRequest(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$rejectSession$7(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessageDeliveryStatus$4(ILandroid/hardware/contexthub/HubMessage;BLandroid/hardware/contexthub/IContextHubEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessageDeliveryStatus(IIB)V

    return-void
.end method

.method private blacklist processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V
    .locals 1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Session "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was rejected, reason="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HubEndpoint"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    :goto_0
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HubEndpointSessionResult shouldn\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist rejectSession(I)V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    return-void
.end method

.method private blacklist sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V
    .locals 1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;-><init>(ILandroid/hardware/contexthub/HubMessage;B)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    :cond_0
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageReceived: session not active, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    return-void
.end method

.method public blacklist onSessionClosed(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionClosed: session not active, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void
.end method

.method public blacklist onSessionOpenComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionOpenComplete: no pending session open request? id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HubEndpoint"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void
.end method

.method public blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "HubEndpoint"

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSessionOpenRequest: session already exists, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "onSessionOpenRequest: failed to open session, no lifecycle callback attached"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    return-void
.end method
