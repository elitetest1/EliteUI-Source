.class public final Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.super Ljava/lang/Object;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;,
        Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemRemoteAppModeManager"

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mRemoteAppModeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRotationChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecureAppChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

.field private blacklist mStartActivityInterceptedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;",
            "Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/remoteappmode/IRemoteAppMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    return-void
.end method


# virtual methods
.method public blacklist clearAll()V
    .locals 2

    sget-object v0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->clearAll()V

    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    move-object v0, p6

    new-instance p6, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;

    invoke-direct {p6, v0}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveCheckerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$VirtualDisplayAliveChecker;)V

    invoke-interface/range {p0 .. p6}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist disableSendingUserPresentIntent()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->disableSendingUserPresentIntent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist enableSendingUserPresentIntent(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->enableSendingUserPresentIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist forceStopPackage(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist getProtocolVersion()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getProtocolVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getSendingUserPresentExpiredTime()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->getSendingUserPresentExpiredTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist isAllowed()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->isAllowed()Z

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

.method public blacklist isSendingUserPresentEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->isSendingUserPresentEnabled()Z

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

.method public blacklist launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist moveDisplayToTop(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->moveDisplayToTop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    .locals 5

    const-string/jumbo v0, "registerRemoteAppModeListener: "

    const-string/jumbo v1, "registerRemoteAppModeListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerRemoteAppModeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist registerRotationChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;I)V
    .locals 5

    const-string/jumbo v0, "registerRotationChangeListener: "

    const-string/jumbo v1, "registerListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerRotationChangeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    .locals 5

    const-string/jumbo v0, "registerSecureAppChangedListener: "

    const-string/jumbo v1, "registerSecureAppChangedListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerSecureAppChangedListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist registerStartActivityInterceptedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .locals 5

    const-string/jumbo v0, "registerListener: "

    const-string/jumbo v1, "registerListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist registerTaskChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    .locals 5

    const-string/jumbo v0, "registerTaskChangeListener: "

    const-string/jumbo v1, "registerTaskChangeListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerTaskChangeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;-><init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist releaseVirtualDisplay(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->releaseVirtualDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z

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

.method public blacklist sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z

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

.method public blacklist sendPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->sendPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setLTWProtocolVersion(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->setLTWProtocolVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setSendingUserPresentExpiredTime(J)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->setSendingUserPresentExpiredTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist startRFCommService()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->startRFCommService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist stopRFCommService()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->stopRFCommService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist transferTaskUsingIntent(Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->transferTaskUsingIntent(Landroid/content/Intent;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    .locals 4

    const-string/jumbo v0, "unregisterRemoteAppModeListener: "

    const-string/jumbo v1, "unregisterRemoteAppModeListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterRemoteAppModeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already unregistered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRemoteAppModeListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;)V
    .locals 4

    const-string/jumbo v0, "unregisterRotationChangeListener: "

    const-string/jumbo v1, "unregisterRotationChangeListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterRotationChangeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already unregistered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mRotationChangedListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListener;)V
    .locals 4

    const-string/jumbo v0, "unregisterSecureAppChangedListener: "

    const-string/jumbo v1, "unregisterSecureAppChangedListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterSecureAppChangedListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already unregistered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mSecureAppChangedListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$SecureAppChangedListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unregisterStartActivityInterceptedListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListener;)V
    .locals 4

    const-string/jumbo v0, "unregisterListener: "

    const-string/jumbo v1, "unregisterListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already unregistered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mStartActivityInterceptedListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$StartActivityInterceptedListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    .locals 4

    const-string/jumbo v0, "unregisterTaskChangeListener: "

    const-string/jumbo v1, "unregisterTaskChangeListener: "

    sget-object v2, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterTaskChangeListener: Listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;

    if-nez v3, :cond_2

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already unregistered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mTaskChangeListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->mService:Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    invoke-interface {p0, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    sget-object p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
