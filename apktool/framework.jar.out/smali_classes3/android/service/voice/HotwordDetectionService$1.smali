.class Landroid/service/voice/HotwordDetectionService$1;
.super Landroid/service/voice/ISandboxedDetectionService$Stub;
.source "HotwordDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/HotwordDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/HotwordDetectionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-direct {p0}, Landroid/service/voice/ISandboxedDetectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance p2, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {p2, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    invoke-virtual {p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object p1

    new-instance p2, Landroid/service/voice/HotwordDetectionService$Callback;

    const/4 v0, 0x0

    invoke-direct {p2, p5, v0}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;JLandroid/service/voice/HotwordDetectionService$Callback;)V

    return-void
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported audio source "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HotwordDetectionService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance p2, Landroid/service/voice/HotwordDetectionService$Callback;

    invoke-direct {p2, p5, v1}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/HotwordDetectionService$Callback;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance p1, Landroid/service/voice/HotwordDetectionService$Callback;

    invoke-direct {p1, p5, v1}, Landroid/service/voice/HotwordDetectionService$Callback;-><init>(Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/HotwordDetectionService-IA;)V

    invoke-virtual {p0, p1}, Landroid/service/voice/HotwordDetectionService;->onDetect(Landroid/service/voice/HotwordDetectionService$Callback;)V

    return-void
.end method

.method public blacklist detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HotwordDetectionService"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/service/voice/ISandboxedDetectionService$IPingMe;->onPing()V

    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Hotword cannot access files from the disk."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist stopDetection()V
    .locals 0

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectionService;->onStopDetection()V

    return-void
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Landroid/media/AudioSystem;->setAudioFlingerBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager;

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    invoke-static {v0, v1}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$fputmContentCaptureManager(Landroid/service/voice/HotwordDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method

.method public blacklist updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V
    .locals 0

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-static {p0, p1}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/HotwordDetectionService;Landroid/speech/IRecognitionServiceManager;)V

    return-void
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, " with callback"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "#updateState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/service/voice/HotwordDetectionService$1;->this$0:Landroid/service/voice/HotwordDetectionService;

    invoke-static {p0, p1, p2, p3}, Landroid/service/voice/HotwordDetectionService;->-$$Nest$monUpdateStateInternal(Landroid/service/voice/HotwordDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method
