.class final Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;
.super Landroid/media/IDevicesForAttributesCallback$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDevicesForAttributesCallbackStub"
.end annotation


# instance fields
.field blacklist mInfo:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$W02OkHjzJVPpLLk2SAkDvyu8TN4(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->lambda$onDevicesForAttributesChanged$0(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/IDevicesForAttributesCallback$Stub;-><init>()V

    new-instance v0, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v0, p1, p2}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    return-void
.end method

.method private synthetic blacklist lambda$onDevicesForAttributesChanged$0(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    iget-object p0, p0, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    invoke-interface {p0, p1, p2}, Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;->mInfo:Landroid/media/CallbackUtil$ListenerInfo;

    iget-object p2, p2, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Landroid/media/AudioManager$IDevicesForAttributesCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$IDevicesForAttributesCallbackStub;Landroid/media/AudioAttributes;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist register(ZLandroid/media/AudioAttributes;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Landroid/media/IAudioService;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/media/IAudioService;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
