.class Landroid/service/wearable/WearableSensingService$1;
.super Landroid/service/wearable/IWearableSensingService$Stub;
.source "WearableSensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/wearable/WearableSensingService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/wearable/WearableSensingService;


# direct methods
.method constructor blacklist <init>(Landroid/service/wearable/WearableSensingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-direct {p0}, Landroid/service/wearable/IWearableSensingService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$queryServiceStatus$5(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startDetection$3(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startDetection$4(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startHotwordRecognition$0(Landroid/os/RemoteCallback;Landroid/service/voice/HotwordAudioStream;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.wearable.HotwordAudioStreamBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$startHotwordRecognition$1(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopHotwordRecognition$2(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist killProcess()V
    .locals 1

    invoke-static {}, Landroid/service/wearable/WearableSensingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#killProcess"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public blacklist onValidatedByHotwordDetectionService()V
    .locals 0

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0}, Landroid/service/wearable/WearableSensingService;->onValidatedByHotwordDetectionService()V

    return-void
.end method

.method public blacklist provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v0, p3}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fputmWearableSensingCallback(Landroid/service/wearable/WearableSensingService;Landroid/app/wearable/IWearableSensingCallback;)V

    :cond_0
    invoke-static {p4}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p3

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wearable/WearableSensingService;->onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p3

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wearable/WearableSensingService;->onDataProvided(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v0, p2}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fputmWearableSensingCallback(Landroid/service/wearable/WearableSensingService;Landroid/app/wearable/IWearableSensingCallback;)V

    :cond_0
    invoke-static {p3}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p2

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2}, Landroid/service/wearable/WearableSensingService;->onDataStreamProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p3

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wearable/WearableSensingService;->onReadOnlyParcelFileDescriptorProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v0, p2}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fputmWearableSensingCallback(Landroid/service/wearable/WearableSensingService;Landroid/app/wearable/IWearableSensingCallback;)V

    :cond_0
    invoke-static {p3}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p2

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2}, Landroid/service/wearable/WearableSensingService;->onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda5;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {p1}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smintArrayToIntegerArray([I)[Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    new-instance p3, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p3, p2, v0}, Landroid/service/wearable/WearableSensingService;->onQueryServiceStatus(Ljava/util/Set;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v0}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v1}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wearable/WearableSensingDataRequester;

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;

    move-result-object v1

    iget-object p2, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {p2}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p5}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p2

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p4, v1, p2}, Landroid/service/wearable/WearableSensingService;->onDataRequestObserverRegistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    new-instance p3, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, p4}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/service/wearable/WearableSensingService;->onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/service/wearable/WearableSensingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "startDetection "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 1

    new-instance v0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    new-instance p1, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda3;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, v0, p1}, Landroid/service/wearable/WearableSensingService;->onStartHotwordRecognition(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist stopActiveHotwordAudio()V
    .locals 0

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0}, Landroid/service/wearable/WearableSensingService;->onStopHotwordAudioStream()V

    return-void
.end method

.method public blacklist stopDetection(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1}, Landroid/service/wearable/WearableSensingService;->onStopDetection(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 1

    new-instance v0, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/service/wearable/WearableSensingService$1$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, v0}, Landroid/service/wearable/WearableSensingService;->onStopHotwordRecognition(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v0}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v1}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wearable/WearableSensingDataRequester;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/service/wearable/WearableSensingService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "dataRequestObserverId not found, cannot unregister data request observer."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-static {v2}, Landroid/service/wearable/WearableSensingService;->-$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4}, Landroid/service/wearable/WearableSensingService;->-$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p2

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService$1;->this$0:Landroid/service/wearable/WearableSensingService;

    invoke-virtual {p0, p1, p3, v1, p2}, Landroid/service/wearable/WearableSensingService;->onDataRequestObserverUnregistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
