.class final Landroid/os/RemoteCallbackList$Interface;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Interface"
.end annotation


# instance fields
.field final blacklist mBinder:Landroid/os/IBinder;

.field final blacklist mCallbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/function/Consumer<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field final blacklist mCookie:Ljava/lang/Object;

.field blacklist mCurrentState:I

.field final blacklist mInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/os/RemoteCallbackList;


# direct methods
.method constructor blacklist <init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCurrentState:I

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/os/RemoteCallbackList$Interface;->mBinder:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    iput-object p3, p0, Landroid/os/RemoteCallbackList$Interface;->mCookie:Ljava/lang/Object;

    invoke-static {p1}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result p2

    if-eq p2, v0, :cond_1

    invoke-static {p1}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object p1, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method blacklist addCallback(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v0}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v0}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v1}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmMaxQueueSize(Landroid/os/RemoteCallbackList;)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public whitelist binderDied()V
    .locals 3

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    iget-object v0, v0, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    iget-object v1, v1, Landroid/os/RemoteCallbackList;->mInterfaces:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/os/RemoteCallbackList$Interface;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList$Interface;->maybeUnsubscribeFromFrozenCallback()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    iget-object v1, p0, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    iget-object p0, p0, Landroid/os/RemoteCallbackList$Interface;->mCookie:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method blacklist maybeSubscribeToFrozenCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v0}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v1}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmExecutor(Landroid/os/RemoteCallbackList;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method blacklist maybeUnsubscribeFromFrozenCallback()V
    .locals 1

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->this$0:Landroid/os/RemoteCallbackList;

    invoke-static {v0}, Landroid/os/RemoteCallbackList;->-$$Nest$fgetmFrozenCalleePolicy(Landroid/os/RemoteCallbackList;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/os/IBinder;->removeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public declared-synchronized whitelist onFrozenStateChanged(Landroid/os/IBinder;I)V
    .locals 1

    monitor-enter p0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    :try_start_0
    iget-object p1, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/os/RemoteCallbackList$Interface;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Interface;->mInterface:Landroid/os/IInterface;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p2, p0, Landroid/os/RemoteCallbackList$Interface;->mCurrentState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
