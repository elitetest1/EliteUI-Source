.class public Landroid/media/Spatializer;
.super Ljava/lang/Object;
.source "Spatializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Spatializer$SpatializerPoseDispatcherStub;,
        Landroid/media/Spatializer$SpatializerOutputDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;,
        Landroid/media/Spatializer$SpatializerInfoDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;,
        Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;,
        Landroid/media/Spatializer$OnSpatializerOutputChangedListener;,
        Landroid/media/Spatializer$OnHeadTrackerAvailableListener;,
        Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;,
        Landroid/media/Spatializer$OnSpatializerStateChangedListener;,
        Landroid/media/Spatializer$HeadTrackingModeSupported;,
        Landroid/media/Spatializer$HeadTrackingModeSet;,
        Landroid/media/Spatializer$HeadTrackingMode;,
        Landroid/media/Spatializer$ImmersiveAudioLevel;
    }
.end annotation


# static fields
.field public static final whitelist HEAD_TRACKING_MODE_DISABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_DEVICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_WORLD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_UNSUPPORTED:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist SPATIALIZER_IMMERSIVE_LEVEL_MCHAN_BED_PLUS_OBJECTS:I = 0x2

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_MULTICHANNEL:I = 0x1

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_NONE:I = 0x0

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_OTHER:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Spatializer"


# instance fields
.field private final blacklist mAm:Landroid/media/AudioManager;

.field private final blacklist mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackerAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

.field private blacklist mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnSpatializerOutputChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputListenerLock:Ljava/lang/Object;

.field private blacklist mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

.field private blacklist mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPoseListenerLock:Ljava/lang/Object;

.field private final blacklist mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnSpatializerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$NJnJ3J_IdFl6yCDK3SddBn_uDFg(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .locals 0

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnHeadTrackingModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QSxbZ2_lWzPP3l4g3Z5QiUnZaPM(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .locals 0

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnSpatializerStateChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RvJVJwn7tSc4nUU79HsouV5Tmq8(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$DispatcherStub;
    .locals 0

    invoke-direct {p0}, Landroid/media/Spatializer;->lambda$addOnHeadTrackerAvailableListener$0()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-void
.end method

.method public static final blacklist headtrackingModeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "head tracking mode unknown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HEAD_TRACKING_MODE_RELATIVE_DEVICE"

    return-object p0

    :cond_1
    const-string p0, "HEAD_TRACKING_MODE_RELATIVE_WORLD"

    return-object p0

    :cond_2
    const-string p0, "HEAD_TRACKING_MODE_OTHER"

    return-object p0

    :cond_3
    const-string p0, "HEAD_TRACKING_MODE_DISABLED"

    return-object p0

    :cond_4
    const-string p0, "HEAD_TRACKING_MODE_UNSUPPORTED"

    return-object p0
.end method

.method private synthetic blacklist lambda$addOnHeadTrackerAvailableListener$0()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnHeadTrackingModeChangedListener$2()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$addOnSpatializerStateChangedListener$1()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    new-instance v0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string v0, "Error calling addSpatializerCompatibleAudioDevice(), "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda2;-><init>(Landroid/media/Spatializer;)V

    const-string p0, "addOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public whitelist addOnHeadTrackingModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer;)V

    const-string p0, "addOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public whitelist addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer;)V

    const-string p0, "addOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public whitelist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    invoke-interface {p0, v0, v1}, Landroid/media/IAudioService;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error querying canBeSpatialized for attr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " format:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returning false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Spatializer"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist clearOnHeadToSoundstagePoseUpdatedListener()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener to clear"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist clearOnSpatializerOutputChangedListener()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener to clear"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist getCompatibleAudioDevices()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error querying getSpatializerCompatibleAudioDevices(),  returning empty list"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public whitelist getDesiredHeadTrackingMode()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getDesiredHeadTrackingMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error calling getDesiredHeadTrackingMode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    return p0
.end method

.method public whitelist getEffectParameter(I[B)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/media/IAudioService;->getSpatializerParameter(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string p2, "Error calling getEffectParameter"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist getHeadTrackingMode()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getActualHeadTrackingMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error calling getActualHeadTrackingMode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    return p0
.end method

.method public whitelist getImmersiveAudioLevel()I
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getSpatializerImmersiveAudioLevel()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getOutput()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getSpatializerOutput()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error calling getSpatializerOutput"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSpatializedChannelMasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error querying getSpatializedChannelMasks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getSupportedHeadTrackingModes()Ljava/util/List;
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    move v3, p0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling getSupportedHeadTrackModes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isAvailable()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->isSpatializerAvailable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error querying isSpatializerAvailable, returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->isSpatializerEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error querying isSpatializerEnabled, returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isHeadTrackerAvailable()Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->isHeadTrackerAvailable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist recenterHeadTracker()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/IAudioService;->recenterHeadTracker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Spatializer"

    const-string v1, "Error calling recenterHeadTracker"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string v0, "Error calling removeSpatializerCompatibleAudioDevice(), "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist removeOnHeadTrackerAvailableListener(Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .locals 1

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v0, "removeOnHeadTrackerAvailableListener"

    invoke-virtual {p0, p1, v0}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist removeOnHeadTrackingModeChangedListener(Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v0, "removeOnHeadTrackingModeChangedListener"

    invoke-virtual {p0, p1, v0}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 1

    iget-object p0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v0, "removeOnSpatializerStateChangedListener"

    invoke-virtual {p0, p1, v0}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist semSetEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/Spatializer;->setEnabled(Z)V

    return-void
.end method

.method public whitelist setDesiredHeadTrackingMode(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->setDesiredHeadTrackingMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error calling setDesiredHeadTrackingMode to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Spatializer"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist setEffectParameter(I[B)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/media/IAudioService;->setSpatializerParameter(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string p2, "Error calling setEffectParameter"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->setSpatializerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string v0, "Error calling setSpatializerEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist setGlobalTransform([F)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    array-length p0, p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->setSpatializerGlobalTransform([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Spatializer"

    const-string v0, "Error calling setGlobalTransform"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transform array must be of size 6, was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/media/IAudioService;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist setOnHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    new-instance p1, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    iput-object p1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {p1, v1}, Landroid/media/IAudioService;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p2, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object p2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to overwrite existing listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist setOnSpatializerOutputChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerOutputChangedListener;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    new-instance p1, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer-IA;)V

    iput-object p1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {p1, v1}, Landroid/media/IAudioService;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    iget-object p1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getOutput()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->dispatchSpatializerOutputChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p2, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object p2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to overwrite existing listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
