.class public Landroid/media/LoudnessCodecDispatcher;
.super Ljava/lang/Object;
.source "LoudnessCodecDispatcher.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecDispatcher"


# instance fields
.field private final blacklist mAudioService:Landroid/media/IAudioService;


# direct methods
.method public constructor blacklist <init>(Landroid/media/IAudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IAudioService;

    iput-object p1, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    return-void
.end method


# virtual methods
.method public blacklist addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/IAudioService;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .locals 1

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method

.method public blacklist getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist register(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p1, p2}, Landroid/media/IAudioService;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .locals 0

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V

    return-void
.end method

.method public blacklist startLoudnessCodecUpdates(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->startLoudnessCodecUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist stopLoudnessCodecUpdates(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->stopLoudnessCodecUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
