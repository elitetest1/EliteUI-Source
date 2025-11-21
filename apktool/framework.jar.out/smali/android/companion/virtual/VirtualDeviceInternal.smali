.class public Landroid/companion/virtual/VirtualDeviceInternal;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
    }
.end annotation


# instance fields
.field private final blacklist mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final blacklist mActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActivityListenersLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntentInterceptorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;",
            "Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntentInterceptorListenersLock:Ljava/lang/Object;

.field private final blacklist mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field private final blacklist mSoundEffectListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;",
            "Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSoundEffectListenersLock:Ljava/lang/Object;

.field private blacklist mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public static synthetic blacklist $r8$lambda$RDTvc_Ej4vCvy7TcyDM5Fc-Xy7Y(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->lambda$createVirtualAudioDevice$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivityListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListeners(Landroid/companion/virtual/VirtualDeviceInternal;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundEffectListenersLock(Landroid/companion/virtual/VirtualDeviceInternal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    new-instance v6, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v6, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v6, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    new-instance v7, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v7, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v7, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$1;

    invoke-direct {v0, p0}, Landroid/companion/virtual/VirtualDeviceInternal$1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$2;

    invoke-direct {v1, p0}, Landroid/companion/virtual/VirtualDeviceInternal$2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/companion/virtual/IVirtualDevice;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private synthetic blacklist lambda$createVirtualAudioDevice$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-void
.end method


# virtual methods
.method blacklist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 2

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .locals 3

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/companion/virtual/VirtualDeviceInternal$SoundEffectListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createContext()Landroid/content/Context;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

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

.method blacklist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .locals 8

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getDevicePolicy(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mContext:Landroid/content/Context;

    :goto_0
    move-object v2, v0

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioDevice;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v7, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/audio/VirtualAudioDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;)V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-object p0
.end method

.method blacklist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    new-instance v0, Landroid/companion/virtual/camera/VirtualCamera;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDevice;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/companion/virtual/camera/VirtualCamera;-><init>(Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p3, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1, v0}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p0}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .locals 3

    const-string v0, "android.hardware.input.VirtualDpad:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualDpad;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualDpad;-><init>(Landroid/hardware/input/VirtualDpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .locals 3

    const-string v0, "android.hardware.input.VirtualKeyboard:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualKeyboard;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .locals 3

    const-string v0, "android.hardware.input.VirtualMouse:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualMouse;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualMouse;-><init>(Landroid/hardware/input/VirtualMouseConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .locals 3

    const-string v0, "android.hardware.input.VirtualNavigationTouchpad:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualNavigationTouchpad;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualNavigationTouchpad;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .locals 3

    const-string v0, "android.hardware.input.VirtualRotaryEncoder:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualRotaryEncoder;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualRotaryEncoder;-><init>(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .locals 3

    const-string v0, "android.hardware.input.VirtualStylus:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualStylus;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualStylus;-><init>(Landroid/hardware/input/VirtualStylusConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .locals 3

    const-string v0, "android.hardware.input.VirtualTouchscreen:"

    :try_start_0
    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1, v1}, Landroid/companion/virtual/IVirtualDevice;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V

    new-instance v0, Landroid/hardware/input/VirtualTouchscreen;

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/input/VirtualTouchscreen;-><init>(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist getDeviceId()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist getPersistentDeviceId()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

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

.method blacklist getVirtualSensorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->getVirtualSensorList()Ljava/util/List;

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

.method blacklist goToSleep()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->goToSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal$3;-><init>(Landroid/companion/virtual/VirtualDeviceInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/companion/virtual/IVirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method blacklist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V

    :try_start_0
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p2, v0, p1}, Landroid/companion/virtual/IVirtualDevice;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mSoundEffectListeners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist setDevicePolicy(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Device policy "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be changed at runtime. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist setDevicePolicyForDisplay(III)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Device policy "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be changed for a specific display. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDevice;->setDevicePolicyForDisplay(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist setDisplayImePolicy(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1, p2}, Landroid/companion/virtual/IVirtualDevice;->setDisplayImePolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist setShowPointerIcon(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDevice;->setShowPointerIcon(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mIntentInterceptorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDevice;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method blacklist wakeUp()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceInternal;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {p0}, Landroid/companion/virtual/IVirtualDevice;->wakeUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
