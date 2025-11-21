.class Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;
.super Ljava/lang/Thread;
.source "ImgCsConverterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/client/ImgCsConverterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConverterThread"
.end annotation


# static fields
.field private static final blacklist THREAD_PREFIX:Ljava/lang/String; = "converter"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/client/ImgCsConverterClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "converter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    const-string v0, "Client has stopped "

    const-string v1, "Task("

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemVideoTranscodingService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onStarted()V

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mArgs:Ljava/util/Map;

    const-string v5, "input-path"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v5, v5, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mArgs:Ljava/util/Map;

    const-string/jumbo v6, "output-path"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/media/codec/ImgCsConverter;->convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onProgressChanged(I)V

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onCompleted()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has been terminated unexpectedly"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-boolean v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIgnoreError:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Ignore this error."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v2, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    throw v0
.end method
