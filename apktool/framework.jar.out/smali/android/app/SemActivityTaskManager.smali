.class public Landroid/app/SemActivityTaskManager;
.super Ljava/lang/Object;
.source "SemActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemActivityTaskManager$TaskChangeController;
    }
.end annotation


# static fields
.field public static final whitelist CAMERA_CUTOUT_SETTING_APP_DEFAULT:I = 0x0

.field public static final whitelist CAMERA_CUTOUT_SETTING_HIDE:I = 0x2

.field public static final whitelist CAMERA_CUTOUT_SETTING_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemActivityTaskManager"

.field private static blacklist sInstance:Landroid/app/SemActivityTaskManager;


# instance fields
.field private final blacklist mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/SemTaskChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTaskChangeCallbacks(Landroid/app/SemActivityTaskManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/SemActivityTaskManager$TaskChangeController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SemActivityTaskManager$TaskChangeController;-><init>(Landroid/app/SemActivityTaskManager;Landroid/app/SemActivityTaskManager-IA;)V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Landroid/app/SemActivityTaskManager;
    .locals 2

    const-class v0, Landroid/app/SemActivityTaskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/SemActivityTaskManager;

    invoke-direct {v1}, Landroid/app/SemActivityTaskManager;-><init>()V

    sput-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;

    :cond_0
    sget-object v1, Landroid/app/SemActivityTaskManager;->sInstance:Landroid/app/SemActivityTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static blacklist getTaskService()Landroid/app/IActivityTaskManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist warningException(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "warningException() : caller="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist getCameraCutoutSetting(ILjava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist registerTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .locals 3

    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "SemActivityTaskManager"

    const-string p1, "TaskChangeCallback already registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public whitelist unregisterTaskChangeCallback(Landroid/app/SemTaskChangeCallback;)Z
    .locals 3

    iget-object v0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "SemActivityTaskManager"

    const-string p1, "TaskChangeCallback no registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/app/SemActivityTaskManager;->getTaskService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Landroid/app/SemActivityTaskManager;->mTaskChangeController:Landroid/app/SemActivityTaskManager$TaskChangeController;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/app/SemActivityTaskManager;->warningException(Ljava/lang/Exception;)V

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
