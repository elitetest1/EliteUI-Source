.class public abstract Lcom/android/internal/infra/AbstractRemoteService;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;,
        Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;,
        Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;,
        Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final blacklist LAST_PRIVATE_MSG:I = 0x2

.field private static final blacklist MSG_BIND:I = 0x1

.field private static final blacklist MSG_UNBIND:I = 0x2

.field public static final blacklist PERMANENT_BOUND_TIMEOUT_MS:J = 0x0L

.field private static final blacklist SERVICE_NOT_EXIST:I = -0x1


# instance fields
.field private final blacklist mBindingFlags:I

.field private blacklist mBound:Z

.field private blacklist mCompleted:Z

.field protected final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mConnecting:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field protected final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private blacklist mNextUnbind:J

.field protected blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceDied:Z

.field private blacklist mServiceExitReason:I

.field private blacklist mServiceExitSubReason:I

.field protected final blacklist mTag:Ljava/lang/String;

.field protected final blacklist mUnfinishedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I

.field public final blacklist mVerbose:Z

.field private final blacklist mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3UrSm20TOaURtb6HUKKluGlF4uo(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$412ApOMGqykBGncTNhVyKtorm44(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleDestroy()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A5Vzy8VSbWa-ycyIpVbrIV89J0U(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mfCKWm2e9IywFiouI7dZPaFZwf8(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vvZVpn_5WoMADq9dzie8Ivl7fXA(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceExitReason(Lcom/android/internal/infra/AbstractRemoteService;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceExitSubReason(Lcom/android/internal/infra/AbstractRemoteService;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService-IA;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    iput-boolean p8, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    iput-object p3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    iput p7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    return-void
.end method

.method private blacklist cancelScheduledUnbind()V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist checkIfDestroyed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not handling operation as service for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return p0
.end method

.method private blacklist handleBinderDied()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->updateServicelicationExitInfo(Landroid/content/ComponentName;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVultureCallback:Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;

    invoke-interface {v0, p0}, Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;->onServiceDied(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBindFailure()V

    return-void
.end method

.method private blacklist handleDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnDestroy()V

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return-void
.end method

.method private blacklist handleEnsureBound()V
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureBound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    const v1, 0x4001001

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    or-int v6, v2, v1

    iget-object v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v7, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not bind to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceDied:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleBinderDied()V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist handleEnsureUnbound()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "ensureUnbound()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mConnecting:Z

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChangedInternal(Z)V

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleFinishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist handleIsBound()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleOnConnectedStateChangedInternal(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleOnConnectedStateChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequests()V

    :cond_0
    return-void
.end method

.method private blacklist handleUnbind()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureUnbound()V

    return-void
.end method

.method private blacklist scheduleUnbind(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "not scheduling unbind when value is "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    move-wide v0, v2

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    iget-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbinding in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist updateServicelicationExitInfo(Landroid/content/ComponentName;I)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2, v1, p2}, Landroid/app/IActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p2

    iput p2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result p1

    iput p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    iget-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateServicelicationExitInfo: exitReason="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exitSubReason= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    invoke-static {p0}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final blacklist destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "userId="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "componentName="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "destroyed="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "numUnfinishedRequests="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "bound="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBound:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "connected="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getTimeoutIdleBindMillis()J

    move-result-wide v2

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string v0, " (unbind in : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-wide v4, p0, Lcom/android/internal/infra/AbstractRemoteService;->mNextUnbind:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    const-string v0, " (permanently bound)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v5, "serviceExistReason="

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v5, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitReason:I

    invoke-static {v5}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    if-eq v0, v4, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "serviceExistSubReason="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mServiceExitSubReason:I

    invoke-static {v1}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mBindingFlags="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mBindingFlags:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "idleTimeout="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "s\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string/jumbo v0, "requestTimeout="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide p0

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "not supported\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected blacklist executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method blacklist finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final blacklist getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method protected blacklist getRemoteRequestMillis()J
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not implemented by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getServiceInterface()Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method protected abstract blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation
.end method

.method protected abstract blacklist getTimeoutIdleBindMillis()J
.end method

.method abstract blacklist handleBindFailure()V
.end method

.method protected blacklist handleOnConnectedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected abstract blacklist handleOnDestroy()V
.end method

.method protected final blacklist handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->checkIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleIsBound()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePendingRequest(): queuing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService;->handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->handleEnsureBound()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePendingRequest(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mUnfinishedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/infra/AbstractRemoteService;->cancelScheduledUnbind()V

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mCompleted:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method abstract blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation
.end method

.method abstract blacklist handlePendingRequests()V
.end method

.method public final blacklist isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    return p0
.end method

.method protected blacklist scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    iget-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist scheduleBind()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "scheduleBind(): already scheduled"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist scheduleUnbind()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService;->scheduleUnbind(Z)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const-string v1, " (bound)"

    goto :goto_0

    :cond_0
    const-string v1, " (unbound)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/infra/AbstractRemoteService;->mDestroyed:Z

    if-eqz p0, :cond_1

    const-string p0, " (destroyed)"

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
