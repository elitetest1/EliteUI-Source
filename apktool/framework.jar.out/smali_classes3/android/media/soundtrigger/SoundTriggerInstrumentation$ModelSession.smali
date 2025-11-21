.class public Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelSession"
.end annotation


# instance fields
.field private final blacklist mDroppedConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

.field private final blacklist mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

.field private blacklist mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

.field private blacklist mModelExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->wrap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    iget-object v0, p2, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p2, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p2, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget p2, p2, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    invoke-static {v2, p2}, Landroid/hardware/soundtrigger/ConversionUtil;->sharedMemoryToByteArray(Landroid/os/ParcelFileDescriptor;I)[B

    move-result-object p2

    invoke-static {v0, v1, p2}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->create(Ljava/util/UUID;Ljava/util/UUID;[B)Landroid/media/soundtrigger/SoundTriggerManager$Model;

    move-result-object p2

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

    if-eqz p3, :cond_0

    array-length p1, p3

    new-array p1, p1, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v1, p3, p2

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    :cond_1
    iput-object p4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$setModelCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrap$1(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist wrap(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist clearModelCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPhrases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getSoundModel()Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModel:Landroid/media/soundtrigger/SoundTriggerManager$Model;

    return-object p0
.end method

.method public blacklist isKeyphrase()Z
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mPhrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setModelCallback(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mModelExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist triggerUnloadModel()V
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->triggerUnloadModel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->mInjectModelEvent:Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
