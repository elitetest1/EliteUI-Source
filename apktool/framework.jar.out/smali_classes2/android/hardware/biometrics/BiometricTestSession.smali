.class public Landroid/hardware/biometrics/BiometricTestSession;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;,
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TAG:Ljava/lang/String; = "BiometricTestSession"


# instance fields
.field private blacklist mCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mSensorId:I

.field private blacklist mTestSession:Landroid/hardware/biometrics/ITestSession;

.field private final blacklist mTestSessionsForAllSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ITestSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTestedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsersCleaningUp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;I",
            "Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    iput p3, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v0

    new-instance v1, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;-><init>(Landroid/hardware/biometrics/BiometricTestSession;ILandroid/hardware/biometrics/BiometricTestSession-IA;)V

    invoke-interface {p4, p1, v0, v1}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;->createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v0, p3, :cond_0

    iput-object v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Opening BiometricTestSession"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BiometricTestSession_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist setTestHalEnabled(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTestHalEnabled, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->setTestHalEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public blacklist acceptAuthentication(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSession;->acceptAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist cleanupInternalState(I)V
    .locals 5

    const-string v0, "Cleanup already in progress for user: "

    :try_start_0
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupInternalState for sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->cleanupInternalState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Awaiting latch..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finished awaiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Latch interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api close()V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Close, mTestedUsers size; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/BiometricTestSession;->cleanupInternalState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleanup not finished before shutdown - pending: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    return-void
.end method

.method public blacklist finishEnroll(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSession;->finishEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifyAcquired(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifyError(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifyVendorAcquired(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyVendorAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist notifyVendorError(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyVendorError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist rejectAuthentication(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSession;->rejectAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist startEnroll(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSession;->startEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
