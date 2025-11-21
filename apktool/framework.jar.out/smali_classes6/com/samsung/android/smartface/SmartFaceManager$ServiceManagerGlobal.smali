.class final Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceManagerGlobal"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

.field private static final blacklist SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.smartface"

.field private static final blacklist SERVICE_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.smartface.SmartFaceServiceStarter"

.field private static final blacklist SERVICE_TIMEOUT:J = 0x3e8L

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mConnectionCount:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mService:Lcom/samsung/android/smartface/ISmartFaceService;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfinishConnection(Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->finishConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartFaceManager/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    invoke-direct {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;-><init>()V

    sput-object v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->INSTANCE:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized blacklist finishConnection(Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static blacklist get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;
    .locals 1

    sget-object v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->INSTANCE:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist bindToServiceSync(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "Service is "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    const-string v2, "bind to smart face service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;-><init>(Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.smartface"

    const-string v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "bindService started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getHandler()Landroid/os/Handler;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/16 v6, 0x49

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    const-string v1, "interrupted while binding"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "already tried bound to smart face service"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v0, :cond_1

    const-string v0, "available"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "unavailable"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connection count = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getHandler()Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getLooper()Landroid/os/Looper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getService()Lcom/samsung/android/smartface/ISmartFaceService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist unbindService(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "unbind from smart face service, connection count = "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    const-string v1, "fail to unbind from smart face service"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :cond_0
    const-string p1, "already unbound from smart face service"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I

    if-gez p1, :cond_2

    sget-object p1, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "possible mis-match in bind & unbind or service died."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->mConnectionCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
