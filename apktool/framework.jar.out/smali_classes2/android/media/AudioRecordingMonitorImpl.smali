.class public Landroid/media/AudioRecordingMonitorImpl;
.super Ljava/lang/Object;
.source "AudioRecordingMonitorImpl.java"

# interfaces
.implements Landroid/media/AudioRecordingMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
    }
.end annotation


# static fields
.field private static final blacklist MSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "android.media.AudioRecordingMonitor"

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mClient:Landroid/media/AudioRecordingMonitorClient;

.field private blacklist mRecordCallbackList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordCallbackLock:Ljava/lang/Object;

.field private final blacklist mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

.field private volatile blacklist mRecordingCallbackHandler:Landroid/os/Handler;

.field private blacklist mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackList(Landroid/media/AudioRecordingMonitorImpl;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordingCallbackHandler(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/AudioRecordingMonitorClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    new-instance v0, Landroid/media/AudioRecordingMonitorImpl$1;

    invoke-direct {v0, p0}, Landroid/media/AudioRecordingMonitorImpl$1;-><init>(Landroid/media/AudioRecordingMonitorImpl;)V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl;->mClient:Landroid/media/AudioRecordingMonitorClient;

    return-void
.end method

.method private blacklist beginRecordingCallbackHandling()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.media.AudioRecordingMonitor.RecordingCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/AudioRecordingMonitorImpl$2;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioRecordingMonitorImpl$2;-><init>(Landroid/media/AudioRecordingMonitorImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method private blacklist endRecordingCallbackHandling()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallback:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordingCallbackHandlerThread:Landroid/os/HandlerThread;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 1

    sget-object v0, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/AudioRecordingMonitorImpl;->sService:Landroid/media/IAudioService;

    return-object v0
.end method


# virtual methods
.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .locals 1

    invoke-static {}, Landroid/media/AudioRecordingMonitorImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioRecordingMonitorImpl;->getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Landroid/media/AudioRecordingConfiguration;"
        }
    .end annotation

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mClient:Landroid/media/AudioRecordingMonitorClient;

    invoke-interface {p0}, Landroid/media/AudioRecordingMonitorClient;->getPortId()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    iget-object v2, v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioRecordingCallback already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioRecordingMonitorImpl;->beginRecordingCallbackHandling()V

    iget-object p0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    new-instance v1, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    invoke-direct {v1, p1, p2}, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null Executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioRecordingCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    iget-object v3, v2, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/media/AudioRecordingMonitorImpl;->mRecordCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioRecordingMonitorImpl;->endRecordingCallbackHandling()V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AudioRecordingCallback was not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
