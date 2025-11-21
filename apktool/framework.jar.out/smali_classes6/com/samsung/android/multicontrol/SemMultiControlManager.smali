.class public final Lcom/samsung/android/multicontrol/SemMultiControlManager;
.super Ljava/lang/Object;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiControl@SemMultiControlManager"

.field public static final blacklist TAG_PREFIX:Ljava/lang/String; = "MultiControl@"

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mService:Lcom/samsung/android/multicontrol/IMultiControlManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/multicontrol/IMultiControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    return-void
.end method


# virtual methods
.method public blacklist enableTriggerDetection(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->enableTriggerDetection(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist forceHideCursor(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->forceHideCursor(Z)V
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
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->getProtocolVersion()I

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

.method public blacklist isAllowed()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->isAllowed()Z

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

.method public blacklist observeDesktopMode(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->observeDesktopMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist resetInputFilter()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->resetInputFilter()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setCursorPosition(II)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setCursorPosition(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setCursorPosition(III)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setCursorPosition(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    new-instance v0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;

    invoke-direct {v0, p2}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setInteractive(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setMultiControlOutOfFocus(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setMultiControlOutOfFocus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setProtocolVersion(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setProtocolVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist setTriggerThreshold(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setTriggerThreshold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist startDeathChecker()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    new-instance v1, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;

    new-instance v2, Lcom/samsung/android/multicontrol/SemMultiControlManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/multicontrol/SemMultiControlManager$1;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public blacklist stopDeathChecker()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->stopDeathChecker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
