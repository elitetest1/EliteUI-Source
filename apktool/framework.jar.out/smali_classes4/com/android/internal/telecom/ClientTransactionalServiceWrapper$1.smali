.class Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;
.super Lcom/android/internal/telecom/ICallEventCallback$Stub;
.source "ClientTransactionalServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist ON_ANSWER:Ljava/lang/String; = "onAnswer"

.field private static final blacklist ON_AVAILABLE_CALL_ENDPOINTS:Ljava/lang/String; = "onAvailableCallEndpointsChanged"

.field private static final blacklist ON_CALL_STREAMING_FAILED:Ljava/lang/String; = "onCallStreamingFailed"

.field private static final blacklist ON_DISCONNECT:Ljava/lang/String; = "onDisconnect"

.field private static final blacklist ON_EVENT:Ljava/lang/String; = "onEvent"

.field private static final blacklist ON_MUTE_STATE_CHANGED:Ljava/lang/String; = "onMuteStateChanged"

.field private static final blacklist ON_REQ_ENDPOINT_CHANGE:Ljava/lang/String; = "onRequestEndpointChange"

.field private static final blacklist ON_SET_ACTIVE:Ljava/lang/String; = "onSetActive"

.field private static final blacklist ON_SET_INACTIVE:Ljava/lang/String; = "onSetInactive"

.field private static final blacklist ON_STREAMING_STARTED:Ljava/lang/String; = "onStreamingStarted"

.field private static final blacklist ON_VIDEO_STATE_CHANGED:Ljava/lang/String; = "onVideoStateChanged"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$k8LeACEhoFu8n-DH0iIyKlZX1eI(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V
    .locals 11

    const-string v1, "Telecom hit an exception while handling a CallEventCallback on an executor: "

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hCEC: id=[%s], action=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallControlCallback()Landroid/telecom/CallControlCallback;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;

    iget-object v2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v6, v2, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;Landroid/os/ResultReceiver;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v2, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "onStreamingStarted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "onAnswer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "onSetActive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "onDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "onSetInactive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onCallStreamingStarted(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    aget-object p0, p4, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p3}, Landroid/telecom/CallControlCallback;->onAnswer(ILjava/util/function/Consumer;)V

    return-void

    :pswitch_2
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetActive(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    aget-object p1, p4, v1

    check-cast p1, Landroid/telecom/DisconnectCause;

    invoke-interface {p2, p1, p3}, Landroid/telecom/CallControlCallback;->onDisconnect(Landroid/telecom/DisconnectCause;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {p0, p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetInactive(Ljava/util/function/Consumer;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b667c72 -> :sswitch_4
        -0x19454825 -> :sswitch_3
        0x1a612e9 -> :sswitch_2
        0x3abf167d -> :sswitch_1
        0x615ea1be -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleEventCallback$1(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "onRequestEndpointChange"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "onVideoStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "onCallStreamingFailed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "onMuteStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p2, Landroid/telecom/CallEndpoint;

    invoke-interface {p1, p2}, Landroid/telecom/CallEventCallback;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->transactionalVideoState()Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onVideoStateChanged(I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_2
    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Landroid/telecom/CallEventCallback;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    return-void

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onCallStreamingFailed(I)V

    return-void

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onMuteStateChanged(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3ee265 -> :sswitch_4
        -0x21a2eb5e -> :sswitch_3
        -0x62d5f62 -> :sswitch_2
        0x22a474df -> :sswitch_1
        0x34696575 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onEvent$2(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telecom/CallEventCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hEC: [%s], callId=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telecom/TransactionalCall;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "oACC: id=[%s], code=[%d]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getPendingControl()Landroid/os/OutcomeReceiver;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance p0, Landroid/telecom/CallControl;

    invoke-direct {p0, p1, p3}, Landroid/telecom/CallControl;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/ICallControl;)V

    invoke-interface {v1, p0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telecom/TransactionalCall;->setCallControl(Landroid/telecom/CallControl;)V

    return-void

    :cond_0
    invoke-interface {v1, p4}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "oACC: TransactionalCall object not found for call w/ id="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "onAnswer"

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .locals 1

    const-string/jumbo v0, "onRequestEndpointChange"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallStreamingFailed(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "oCSF: id=[%s], reason=[%s]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onCallStreamingFailed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onStreamingStarted"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V
    .locals 1

    const-string/jumbo v0, "onDisconnect"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telecom/TransactionalCall;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist onMuteStateChanged(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "onMuteStateChanged"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onSetActive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onSetInactive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onVideoStateChanged(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "onVideoStateChanged"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    return-void
.end method
