.class public Landroid/app/DreamManager;
.super Ljava/lang/Object;
.source "DreamManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iput-object p1, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist areDreamsSupported()Z
    .locals 1

    iget-object p0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110163

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist canStartDreaming(Z)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->canStartDreaming(Z)Z

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

.method public blacklist isDreaming()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

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

.method public blacklist isScreensaverEnabled()Z
    .locals 3

    iget-object p0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screensaver_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public blacklist setActiveDream(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :try_start_0
    iget-object v1, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iget-object p0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p0, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setDevicePostured(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->setDevicePostured(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setDreamIsObscured(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->setDreamIsObscured(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setDreamOverlay(Landroid/content/ComponentName;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->registerDreamOverlayService(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setScreensaverEnabled(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->setScreensaverEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setSystemDreamComponent(Landroid/content/ComponentName;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->setSystemDreamComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist startDream()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist stopDream()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
