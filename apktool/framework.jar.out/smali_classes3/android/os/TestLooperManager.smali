.class public Landroid/os/TestLooperManager;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TestLooperManager$LooperHolder;,
        Landroid/os/TestLooperManager$MessageExecution;
    }
.end annotation


# static fields
.field private static final greylist-max-o sHeldLoopers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/TestLooperManager$MessageExecution;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final blacklist mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mLooperIsMyLooper:Z

.field private final greylist-max-o mQueue:Landroid/os/MessageQueue;

.field private greylist-max-o mReleased:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecuteQueue(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLooperHolderLatch(Landroid/os/TestLooperManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleased(Landroid/os/TestLooperManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iput-object v2, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/os/TestLooperManager;->mLooperIsMyLooper:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/TestLooperManager$LooperHolder;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager-IA;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "TestLooperManager already held for this looper"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private greylist-max-o checkReleased()V
    .locals 1

    iget-boolean p0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "release() has already be called"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist waitForLooperHolder()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/TestLooperManager;->mLooperHolderLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public whitelist execute(Landroid/os/Message;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    iget-object v0, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mLooperIsMyLooper:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager-IA;)V

    invoke-static {v0, p1}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fputm(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetresponse(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot call execute from non Looper thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getMessageQueue()Landroid/os/MessageQueue;
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    return-object p0
.end method

.method public greylist getQueue()Landroid/os/MessageQueue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/TestLooperManager;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object p0

    return-object p0
.end method

.method public whitelist hasMessages(Landroid/os/Handler;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist hasMessages(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist isBlockedOnSyncBarrier()Z
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isBlockedOnSyncBarrier()Z

    move-result p0

    return p0
.end method

.method public whitelist next()Landroid/os/Message;
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public whitelist peekWhen()Ljava/lang/Long;
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0}, Landroid/os/MessageQueue;->peekWhenForTest()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public whitelist poll()Landroid/os/Message;
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    invoke-direct {p0}, Landroid/os/TestLooperManager;->waitForLooperHolder()V

    iget-object p0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {p0}, Landroid/os/MessageQueue;->pollForTest()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public whitelist recycle(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    invoke-virtual {p1}, Landroid/os/Message;->recycleUnchecked()V

    return-void
.end method

.method public whitelist release()V
    .locals 2

    sget-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    iget-object p0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager-IA;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
