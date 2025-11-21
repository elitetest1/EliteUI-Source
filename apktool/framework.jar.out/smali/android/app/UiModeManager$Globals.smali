.class Landroid/app/UiModeManager$Globals;
.super Landroid/app/IUiModeManagerCallback$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private blacklist mContrast:F

.field private final blacklist mContrastChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ContrastChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForceInvertState:I

.field private final blacklist mForceInvertStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ForceInvertStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGlobalsLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/app/IUiModeManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;
    .locals 0

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F
    .locals 0

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getContrast()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getForceInvertState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/IUiModeManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/IUiModeManagerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    :try_start_0
    invoke-interface {p1, p0}, Landroid/app/IUiModeManager;->addCallback(Landroid/app/IUiModeManagerCallback;)V

    invoke-interface {p1}, Landroid/app/IUiModeManager;->getContrast()F

    move-result v0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    invoke-interface {p1}, Landroid/app/IUiModeManager;->getForceInvertState()I

    move-result p1

    iput p1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UiModeManager"

    const-string v0, "Setup failed: UiModeManagerService is dead"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getContrast()F
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getForceInvertState()I
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$2(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ContrastChangeListener;->onContrastChanged(F)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$3(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;-><init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$0(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ForceInvertStateChangeListener;->onForceInvertStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$1(ILandroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private blacklist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

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

.method private blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

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


# virtual methods
.method public blacklist notifyContrastChanged(F)V
    .locals 5

    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    new-instance v1, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist notifyForceInvertStateChanged(I)V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    if-ne v2, p1, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
