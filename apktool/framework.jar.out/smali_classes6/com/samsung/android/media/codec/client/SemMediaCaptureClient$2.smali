.class Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;
.super Ljava/lang/Object;
.source "SemMediaCaptureClient.java"

# interfaces
.implements Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->transcode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRecordingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onRecordingCompletion() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemVideoTranscodingService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIsRunning:Z

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {p1}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->reset()V

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {p1}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iput-object v0, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iput-object v0, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onProgressChanged(I)V

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$2;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object p0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onCompleted()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method
