.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_TIMESTAMP:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private blacklist mCloseSocketFd:Z

.field private blacklist mIsFirstPropertyCheck:Z

.field private blacklist mIsForkChild:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private blacklist mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field private blacklist mUsapPoolRefillDelayMs:I

.field private blacklist mUsapPoolRefillThreshold:I

.field private blacklist mUsapPoolRefillTriggerTimestamp:J

.field private blacklist mUsapPoolSizeMax:I

.field private blacklist mUsapPoolSizeMin:I

.field private final blacklist mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final blacklist mUsapPoolSupported:Z

.field private blacklist mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    return-void
.end method

.method constructor blacklist <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "zygote"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    const-string/jumbo p1, "usap_pool_primary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "zygote_secondary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    const-string/jumbo p1, "usap_pool_secondary"

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    return-void
.end method

.method private blacklist acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IOException during accept()"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private blacklist fetchUsapPoolPolicyProps()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "usap_pool_size_max"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    const-string/jumbo v0, "usap_pool_size_min"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    const-string/jumbo v0, "usap_refill_threshold"

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const-string/jumbo v0, "usap_pool_refill_delay_ms"

    const/16 v3, 0xbb8

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v0, v3, :cond_0

    const-string v0, "ZygoteServer"

    const-string v3, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    :cond_0
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsIfUnfetched()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    :cond_0
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsWithMinInterval()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    return-void
.end method

.method private blacklist resetUsapRefillState()V
    .locals 2

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    return-void
.end method


# virtual methods
.method blacklist closeServerSocket()V
    .locals 3

    const-string v0, "ZygoteServer"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object p0
.end method

.method blacklist fillUsapPool([IZ)Ljava/lang/Runnable;
    .locals 6

    const-string v0, "Zygote:FillUsapPool"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsIfUnfetched()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    const-string/jumbo v3, "zygote"

    if-eqz p2, :cond_0

    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Priority USAP Pool refill. New USAPs: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Delayed USAP Pool refill. New USAPs: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    invoke-static {v0, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->resetUsapRefillState()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isUsapPoolEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return p0
.end method

.method blacklist registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error binding to abstract socket \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method blacklist runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 18

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :goto_0
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsWithMinInterval()V

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iget-boolean v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    array-length v9, v0

    add-int/2addr v8, v9

    new-array v8, v8, [Landroid/system/StructPollfd;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/system/StructPollfd;

    move-object v0, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/FileDescriptor;

    new-instance v13, Landroid/system/StructPollfd;

    invoke-direct {v13}, Landroid/system/StructPollfd;-><init>()V

    aput-object v13, v8, v11

    iput-object v12, v13, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v12, v8, v11

    sget v13, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v13, v13

    iput-short v13, v12, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    iget-boolean v9, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz v9, :cond_2

    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v8, v11

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v9, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v9, v8, v11

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v9, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v9, v11, 0x1

    array-length v12, v0

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_3

    aget v14, v0, v13

    new-instance v15, Ljava/io/FileDescriptor;

    invoke-direct {v15}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v15, v14}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v14, Landroid/system/StructPollfd;

    invoke-direct {v14}, Landroid/system/StructPollfd;-><init>()V

    aput-object v14, v8, v9

    iput-object v15, v14, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v14, v8, v9

    sget v15, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v15, v15

    iput-short v15, v14, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    move v9, v11

    :cond_3
    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    cmp-long v0, v12, v5

    if-nez v0, :cond_4

    move/from16 v16, v11

    const/4 v0, -0x1

    const/4 v15, -0x1

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide/from16 v16, v13

    const/4 v15, -0x1

    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sub-long v13, v16, v12

    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    move/from16 v16, v11

    int-to-long v10, v0

    cmp-long v10, v13, v10

    if-ltz v10, :cond_5

    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v13, v10

    if-gtz v10, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v10, v0

    sub-long/2addr v10, v13

    long-to-int v0, v10

    :goto_4
    :try_start_0
    invoke-static {v8, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_7

    iput-wide v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_7
    const/4 v10, 0x0

    :goto_5
    add-int/2addr v9, v15

    if-ltz v9, :cond_14

    aget-object v0, v8, v9

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v11

    if-nez v0, :cond_8

    :goto_6
    move/from16 v13, v16

    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_8
    if-nez v9, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v11, "ZygoteServer"

    move/from16 v13, v16

    if-ge v9, v13, :cond_10

    :try_start_1
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {}, Ldalvik/system/ZygoteHooks;->isIndefiniteThreadSuspensionSafe()Z

    move-result v14

    if-eqz v14, :cond_a

    move v14, v7

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v0, v1, v14}, Lcom/android/internal/os/ZygoteConnection;->processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v14

    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_c

    if-eqz v14, :cond_b

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-object v14

    :cond_b
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "command == null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez v14, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    const/4 v12, 0x0

    :goto_9
    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    goto :goto_7

    :cond_e
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "command != null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v12, 0x0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_4
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_f

    const-string v4, "Exception executing zygote command: "

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v12, 0x0

    goto :goto_9

    :cond_f
    const-string v2, "Caught post-fork exception in child process."

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_a
    iput-boolean v12, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    throw v0

    :cond_10
    const/4 v12, 0x0

    const/16 v0, 0x8

    :try_start_5
    new-array v4, v0, [B

    aget-object v14, v8, v9

    iget-object v14, v14, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    invoke-static {v14, v4, v12, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v14

    if-ne v14, v0, :cond_12

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-le v9, v13, :cond_11

    long-to-int v0, v10

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    :cond_11
    move v10, v7

    goto :goto_b

    :cond_12
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    if-ne v9, v13, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "Failed to read from USAP pool event FD: "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "Failed to read from USAP reporting pipe: "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move/from16 v16, v13

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v12, 0x0

    if-eqz v10, :cond_16

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_15

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_c

    :cond_15
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :cond_16
    :goto_c
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v0, v4, :cond_19

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v7, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v8, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v4, v8, :cond_17

    goto :goto_d

    :cond_17
    move v7, v12

    :goto_d
    invoke-virtual {v1, v0, v7}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    if-eqz v7, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "poll failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist setForkChild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method

.method blacklist setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "ENABLED"

    goto :goto_0

    :cond_2
    const-string v0, "DISABLED"

    :goto_0
    const-string v3, "USAP Pool status change: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    return-object v2
.end method
