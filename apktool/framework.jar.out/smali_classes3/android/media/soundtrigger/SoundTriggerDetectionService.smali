.class public abstract Landroid/media/soundtrigger/SoundTriggerDetectionService;
.super Landroid/app/Service;
.source "SoundTriggerDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SoundTriggerDetectionService"


# instance fields
.field private final greylist-max-o mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->removeClient(Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->setClient(Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    return-void
.end method

.method private greylist-max-o removeClient(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onDisconnected(Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private greylist-max-o setClient(Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onConnected(Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected final whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;

    invoke-direct {p1, p0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;-><init>(Landroid/media/soundtrigger/SoundTriggerDetectionService;)V

    return-object p1
.end method

.method public whitelist onConnected(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onDisconnected(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onError(Ljava/util/UUID;Landroid/os/Bundle;II)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->operationFinished(Ljava/util/UUID;I)V

    return-void
.end method

.method public whitelist onGenericRecognitionEvent(Ljava/util/UUID;Landroid/os/Bundle;ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->operationFinished(Ljava/util/UUID;I)V

    return-void
.end method

.method public abstract whitelist onStopOperation(Ljava/util/UUID;Landroid/os/Bundle;I)V
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist operationFinished(Ljava/util/UUID;I)V
    .locals 2

    const-string/jumbo v0, "operationFinished called, but no client for "

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    if-nez p0, :cond_0

    sget-object p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Was this called after onDisconnected?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0, p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;->onOpFinished(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p2, Landroid/media/soundtrigger/SoundTriggerDetectionService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "operationFinished, remote exception for client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
