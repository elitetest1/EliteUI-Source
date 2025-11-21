.class Landroid/service/voice/VisualQueryDetector$InitializationStateListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationStateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-3N5C9rvlU46hVbtHvv1Ecug7b8(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onProcessRestarted$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$-RUgUS0HD6bCER8kDNRkQk0NvM8(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onStatusReported$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FnaZMcGagFqMZtTlVIHmTfT7RQg(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onVisualQueryDetectionServiceFailure$5(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HkW_IKfbITPRlnv_UUqrrAGmvs4(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onOpenFile$8(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XszvDLE90dl1R8Fu5qOSAFHy884(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onUnknownFailure$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y9ACnBPocODuXjAOq8zsN55qfsQ(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onVisualQueryDetectionServiceFailure$4(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d6apbN1023kOf6qiPqeLLyupg5w(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onProcessRestarted$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ooFNlm9IlA9mEwzVVKYmcp3KG3g(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onOpenFile$9(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$prTQ1TeT0T-47CkokmDICumWzhE(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onUnknownFailure$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xLC2WetRsOlTPz0E9T8PQ3kFXpA(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->lambda$onStatusReported$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    iput-object p3, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic blacklist lambda$onOpenFile$8(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onOpenFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "under internal app storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot open file. No ParcelFileDescriptor returned."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    throw p0
.end method

.method private synthetic blacklist lambda$onOpenFile$9(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$2()V
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {p0}, Landroid/service/voice/VisualQueryDetector$Callback;->onVisualQueryDetectionServiceRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$3()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$0(I)V
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {p0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onVisualQueryDetectionServiceInitialized(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$6(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Error data is null"

    :goto_0
    invoke-interface {p0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$7(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$4(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    invoke-interface {p0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    const-string p1, "Error data is null"

    invoke-interface {p0, p1}, Landroid/service/voice/VisualQueryDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVisualQueryDetectionServiceFailure$5(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onHotwordDetectionServiceFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0

    return-void
.end method

.method public blacklist onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0

    return-void
.end method

.method public blacklist onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BinderCallback#onOpenFile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda8;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onProcessRestarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcessRestarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda9;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRecognitionPaused()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onRecognitionResumed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .locals 2

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected STFailure in VisualQueryDetector"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onStatusReported(I)V
    .locals 2

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStatusReported"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda7;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onUnknownFailure(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUnknownFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onVisualQueryDetectionServiceFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VisualQueryDetector$InitializationStateListener;Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
