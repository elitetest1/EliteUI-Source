.class final Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;
.super Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioVolumeChangeDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAudioVolumeGroupChanged$0(IILandroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/media/AudioManager$VolumeGroupCallback;->onAudioVolumeGroupChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onAudioVolumeGroupChanged(II)V
    .locals 1

    iget-object p0, p0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {p0}, Landroid/media/AudioManager;->-$$Nest$fgetmVolumeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object p0

    new-instance v0, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/media/AudioManager$AudioVolumeChangeDispatcherStub$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public blacklist register(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->registerAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->unregisterAudioVolumeCallback(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
