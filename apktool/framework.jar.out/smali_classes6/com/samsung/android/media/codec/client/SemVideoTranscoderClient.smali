.class public Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;
.super Lcom/samsung/android/media/codec/client/ClientImpl;
.source "SemVideoTranscoderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;
    }
.end annotation


# static fields
.field private static final blacklist RECORDING_MODE_SLOW_MOTION:I = 0x1

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2:I = 0xc

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_120:I = 0xd

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_HEVC:I = 0x15

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC:I = 0xf

.field private static final blacklist RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC_240:I = 0x13


# instance fields
.field private final blacklist mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisSupportedHdrToSdr()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->isSupportedHdrToSdr()Z

    move-result v0

    return v0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/codec/client/ClientImpl;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    new-instance p1, Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {p1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    return-void
.end method

.method private static blacklist isSupportedHdrToSdr()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x186a0

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSupportedHdrToSdr() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemVideoTranscodingService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public blacklist stop()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIgnoreError:Z

    iget-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    const-string v1, "SemVideoTranscodingService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop running client id("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->stop()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "Exception startTask()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public blacklist transcode()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;-><init>(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)V

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has been terminated unexpectedly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIgnoreError:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Client has stopped "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ignore this error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mFis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
