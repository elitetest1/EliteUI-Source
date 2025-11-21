.class public final Lcom/android/internal/telephony/util/WorkerThread;
.super Landroid/os/HandlerThread;
.source "WorkerThread.java"


# static fields
.field private static volatile blacklist sHandler:Landroid/os/Handler;

.field private static volatile blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static volatile blacklist sInstance:Lcom/android/internal/telephony/util/WorkerThread;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mInitLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    const-string v0, "android.telephony.worker"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static blacklist ensureThread()V
    .locals 7

    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/util/WorkerThread;

    invoke-direct {v1}, Lcom/android/internal/telephony/util/WorkerThread;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v1, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    sput-object v2, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerExecutor;

    sget-object v3, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist get()Landroid/os/HandlerThread;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    return-object v0
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist reset()V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->quitSafely()Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected whitelist onLooperPrepared()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
