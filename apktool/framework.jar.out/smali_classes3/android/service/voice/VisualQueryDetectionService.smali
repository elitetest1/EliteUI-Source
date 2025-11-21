.class public abstract Landroid/service/voice/VisualQueryDetectionService;
.super Landroid/app/Service;
.source "VisualQueryDetectionService.java"

# interfaces
.implements Landroid/service/voice/SandboxedDetectionInitializer;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VisualQueryDetectionService"

.field private static final blacklist TAG:Ljava/lang/String; = "VisualQueryDetectionService"

.field private static final blacklist UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

.field private blacklist mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mInterface:Landroid/service/voice/ISandboxedDetectionService;

.field private blacklist mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContentCaptureManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDetectorSessionStorageService(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionStorageService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/speech/IRecognitionServiceManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteCallback(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateStateInternal(Landroid/service/voice/VisualQueryDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    new-instance v0, Landroid/service/voice/VisualQueryDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetectionService$1;-><init>(Landroid/service/voice/VisualQueryDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    return-void
.end method

.method private blacklist onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 6

    invoke-static {p3}, Landroid/service/voice/SandboxedDetectionInitializer;->createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;

    move-result-object v5

    const-wide/16 v3, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method public final whitelist finishQuery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "#finishQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist gainedAttention()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final whitelist gainedAttention(Landroid/service/voice/VisualQueryAttentionResult;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object p0

    :cond_0
    const-string/jumbo v0, "speech_recognition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/speech/IRecognitionServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist lostAttention()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionLost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final whitelist lostAttention(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionLost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.voice.VisualQueryDetectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {p0}, Landroid/service/voice/ISandboxedDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to bind to wrong intent (should be android.service.voice.VisualQueryDetectionService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onStartDetection()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist onStopDetection()V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "File does not exist. Unable to open "

    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

    invoke-interface {p0, p1, v1}, Landroid/service/voice/IDetectorSessionStorageService;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot open file due to remote service failure"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist rejectQuery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryRejected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "#rejectQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist streamQuery(Landroid/service/voice/VisualQueryDetectedResult;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "#streamQuery must be only be triggered after calling #gainedAttention to be in the attention gained state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist streamQuery(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryDetected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "#streamQuery must be only be triggered after calling #gainedAttention to be in the attention gained state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
