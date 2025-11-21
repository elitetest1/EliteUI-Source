.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"


# instance fields
.field private final blacklist abiList:Ljava/lang/String;

.field private blacklist isEof:Z

.field private final greylist mSocket:Landroid/net/LocalSocket;

.field private final greylist mSocketOutStream:Ljava/io/DataOutputStream;

.field private final greylist peer:Landroid/net/Credentials;


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return-void

    :cond_0
    new-instance p0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string p1, "Only system UID is allowed to connect to Zygote."

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "Zygote"

    const-string p2, "Cannot read peer credentials"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method private blacklist handleAbiListQuery()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error writing to command socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleBootCompleted()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ldalvik/system/VMRuntime;->bootCompleted()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error writing to command socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    const-string p0, "Zygote"

    invoke-static {p1, p0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object p0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez p0, :cond_1

    if-nez p3, :cond_0

    iget p0, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object p2, p1, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object p1, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleParentProc(ILjava/io/FileDescriptor;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "Error reading pid from wrapped process, child may have died"

    const-string v4, "Zygote"

    if-lez v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    :cond_0
    const/4 v5, 0x0

    if-eqz v0, :cond_a

    if-lez v2, :cond_a

    const/4 v7, 0x1

    :try_start_0
    new-array v8, v7, [Landroid/system/StructPollfd;

    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v8, v5

    const/4 v9, 0x4

    new-array v10, v9, [B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    const/16 v13, 0x4e20

    move v14, v5

    move v15, v13

    :goto_0
    if-ge v14, v9, :cond_5

    if-lez v15, :cond_5

    aget-object v6, v8, v5

    iput-object v0, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v6, v8, v5

    sget v9, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v9, v9

    iput-short v9, v6, Landroid/system/StructPollfd;->events:S

    aget-object v6, v8, v5

    iput-short v5, v6, Landroid/system/StructPollfd;->revents:S

    aget-object v6, v8, v5

    const/4 v9, 0x0

    iput-object v9, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    invoke-static {v8, v15}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v15, v5

    move/from16 v18, v6

    sub-long v5, v16, v11

    move/from16 v16, v15

    :try_start_1
    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v5, v6, v15}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    long-to-int v5, v5

    rsub-int v15, v5, 0x4e20

    if-lez v18, :cond_3

    aget-object v5, v8, v16

    iget-short v5, v5, Landroid/system/StructPollfd;->revents:S

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    invoke-static {v0, v10, v14, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/2addr v14, v5

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Some error"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    if-nez v18, :cond_4

    const-string v5, "Timed out waiting for child."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move/from16 v5, v16

    const/4 v9, 0x4

    goto :goto_0

    :cond_5
    move/from16 v16, v5

    move v0, v9

    :goto_2
    if-ne v14, v0, :cond_6

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    const/4 v5, -0x1

    :goto_3
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    :try_start_2
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move v6, v5

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v16, v5

    :goto_4
    const/4 v6, -0x1

    :goto_5
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    :cond_7
    :goto_6
    if-lez v5, :cond_b

    move v0, v5

    :goto_7
    if-lez v0, :cond_8

    if-eq v0, v2, :cond_8

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    goto :goto_7

    :cond_8
    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wrapped process has pid "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    move v5, v7

    goto :goto_9

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " innerPid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    move/from16 v16, v5

    :cond_b
    :goto_8
    move/from16 v5, v16

    :goto_9
    :try_start_3
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handlePidQuery()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error writing to command socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist handlePreload()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error writing to command socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error writing to command socket"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic blacklist lambda$handleApiDenylistExemptions$0([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setApiDenylistExemptions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleHiddenApiAccessLogSampleRate$1(II)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiAccessLogSampleRate(I)V

    invoke-static {p0, p1}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->setHiddenApiAccessLogSampleRates(II)V

    invoke-static {}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    return-void
.end method

.method private blacklist setChildPgid(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {p0}, Landroid/net/Credentials;->getPid()I

    move-result p0

    invoke-static {p0}, Landroid/system/Os;->getpgid(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Zygote"

    const-string p1, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Zygote"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "Emptying USAP Pool due to state change."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    return-object p2

    :cond_1
    const-string p1, "Finished refilling USAP Pool after state change."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error writing to command socket"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method greylist closeSocket()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Zygote"

    const-string v1, "Exception while closing command socket in parent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSocketOutputStream()Ljava/io/DataOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Zygote does not support app preloading"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist isClosedByPeer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return p0
.end method

.method protected blacklist isPreloadComplete()Z
    .locals 0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result p0

    return p0
.end method

.method protected blacklist preload()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method blacklist processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/os/ZygoteCommandBuffer;

    iget-object v3, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    :try_start_1
    iput-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v26, v2

    goto/16 :goto_8

    :cond_0
    :try_start_2
    iget-boolean v6, v3, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v6, :cond_1

    :try_start_3
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handleBootCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_1
    :try_start_4
    iget-boolean v6, v3, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v6, :cond_2

    :try_start_5
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_2
    :try_start_6
    iget-boolean v6, v3, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_3

    :try_start_7
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handlePidQuery()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_3
    :try_start_8
    iget-boolean v6, v3, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    const/4 v7, -0x1

    if-nez v6, :cond_11

    iget-object v6, v3, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v6, :cond_11

    iget v6, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v6, v7, :cond_11

    iget v6, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v6, v7, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-boolean v6, v3, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v6, :cond_5

    :try_start_9
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_5
    :try_start_a
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->canPreloadApp()Z

    move-result v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    :try_start_b
    iget-object v6, v3, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    iget-object v3, v3, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v1, v8, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v5

    :cond_6
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to deserialize --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_7
    :try_start_d
    iget-wide v9, v3, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-nez v6, :cond_10

    iget-wide v9, v3, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v6, v9, v11

    if-nez v6, :cond_10

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v3, v6}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v3, v6}, Lcom/android/internal/os/Zygote;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    invoke-static {v3}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {v3}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    iget-object v6, v3, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v6, :cond_8

    :try_start_e
    iget-object v6, v3, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v10, v6

    goto :goto_1

    :cond_8
    move-object v10, v5

    :goto_1
    :try_start_f
    iget-object v6, v3, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v6, :cond_9

    :try_start_10
    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v6}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v6

    aget-object v9, v6, v4

    aget-object v6, v6, v8

    sget v11, Landroid/system/OsConstants;->F_SETFD:I

    invoke-static {v9, v11, v8}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v12

    filled-new-array {v11, v12}, [I

    move-result-object v11
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v15, v11

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to set up pipe for invoke-with"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_9
    move-object v6, v5

    move-object v9, v6

    move-object v15, v9

    :goto_2
    const/4 v11, 0x2

    :try_start_12
    new-array v14, v11, [I

    aput v7, v14, v8

    aput v7, v14, v4

    iget-object v7, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v7, :cond_a

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v14, v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_a
    :try_start_14
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v7, :cond_b

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v14, v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_b
    :try_start_16
    iget-object v4, v3, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-nez v4, :cond_e

    :try_start_17
    iget-boolean v4, v3, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v4, :cond_e

    if-eqz p2, :cond_e

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v4}, Landroid/net/Credentials;->getUid()I

    move-result v4

    const/16 v7, 0x3e8

    if-eq v4, v7, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v6}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v6

    iget-object v3, v3, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6, v3}, Lcom/android/internal/os/Zygote;->forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v3

    :cond_e
    :goto_3
    move-object v4, v6

    :try_start_18
    iget v6, v3, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v7, v3, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v8, v3, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    move-object v11, v9

    iget v9, v3, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    move-object v12, v11

    iget v11, v3, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    move-object v13, v12

    iget-object v12, v3, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    move-object/from16 v16, v13

    iget-object v13, v3, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-boolean v5, v3, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    move-object/from16 v26, v2

    :try_start_19
    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    move/from16 v19, v2

    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    move-object/from16 v21, v2

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v22, v2

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v23, v2

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    move-object/from16 v24, v16

    move/from16 v16, v5

    move-object/from16 v5, v24

    move/from16 v24, v2

    invoke-static/range {v6 .. v24}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-nez v2, :cond_f

    :try_start_1a
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    iget-boolean v1, v3, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    invoke-direct {v0, v3, v5, v1}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_4

    :cond_f
    :try_start_1d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    invoke-direct {v0, v2, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(ILjava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    return-object v25

    :catchall_2
    move-exception v0

    move-object/from16 v5, v25

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_4
    :try_start_20
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v0

    :cond_10
    move-object/from16 v26, v2

    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v3, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :cond_11
    :goto_5
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v3, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteConnection;->handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, v3, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteConnection;->handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_13
    iget v2, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v2, v7, :cond_15

    iget v2, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v2, v7, :cond_14

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Shouldn\'t get here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_6
    iget v2, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iget v3, v3, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v26, v2

    :goto_7
    move-object v1, v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v26, v2

    :try_start_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IOException on command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_7

    :goto_8
    :try_start_22
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
.end method
