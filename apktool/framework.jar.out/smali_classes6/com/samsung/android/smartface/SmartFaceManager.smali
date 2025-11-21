.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;,
        Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;
    }
.end annotation


# static fields
.field public static final blacklist FALSE:Ljava/lang/String; = "false"

.field public static final blacklist FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final blacklist MSG_FACEINFO:I = 0x0

.field public static final blacklist MSG_REGISTERED:I = 0x1

.field public static final blacklist MSG_UNREGISTERED:I = 0x2

.field private static final blacklist NULL_VALUE:Ljava/lang/String; = ""

.field public static final blacklist SERVICETYPE_STAY:I = 0x4

.field public static final blacklist SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final blacklist SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final blacklist SMART_STAY_DELAY:I = 0xabe

.field public static final blacklist SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final blacklist complete:Ljava/util/concurrent/locks/Condition;

.field private final blacklist lock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mCallbackData:I

.field private final blacklist mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private final blacklist mEventHandlerLock:Ljava/lang/Object;

.field private blacklist mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private blacklist mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$xWtz4GUpvb6WDZwq4MiqtN_vPN8(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/FaceInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartface/SmartFaceManager;->lambda$checkForSmartStay$0(Lcom/samsung/android/smartface/FaceInfo;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandlerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {p1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/SmartFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$checkForSmartStay$0(Lcom/samsung/android/smartface/FaceInfo;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkForSmartStay onInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget p1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    iput p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    iget-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    return-void
.end method

.method private blacklist waitForCallback(I)J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-interface {p0, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const-string p0, "SmartFaceManager"

    const-string p1, "No Callback!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized blacklist checkForSmartStay()Z
    .locals 6

    const-string v0, "checkForSmartStay X: "

    monitor-enter p0

    :try_start_0
    const-string v1, "SmartFaceManager"

    const-string v2, "checkForSmartStay S"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v2, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z

    const-string/jumbo v1, "smart-stay-framecount-reset"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const/16 v4, 0x49e

    invoke-direct {p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v3, v5

    :cond_0
    iput v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const/16 v1, 0x3f9

    invoke-direct {p0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v1, :cond_1

    move v3, v5

    :cond_1
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v4, 0x0

    :try_start_7
    iput-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0
.end method

.method public declared-synchronized blacklist getSupportedServices()I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "SmartFaceManager"

    const-string/jumbo v3, "null service, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SmartFaceManager"

    const-string/jumbo v3, "remote exception, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public blacklist setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized blacklist setValue(Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V
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

.method public declared-synchronized blacklist setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Sending "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to service"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "SmartFaceManager"

    const-string/jumbo v0, "null service, ignore"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "SmartFaceManager"

    const-string/jumbo v0, "remote exception, ignore"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized blacklist start(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SmartFaceManager"

    const-string/jumbo v2, "null service, ignore"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist startAsync(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SmartFaceManager"

    const-string/jumbo v1, "null service, ignore"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
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

.method public declared-synchronized blacklist stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "SmartFaceManager"

    const-string/jumbo v2, "null service, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public declared-synchronized blacklist stopAsync()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->getService()Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "SmartFaceManager"

    const-string/jumbo v2, "null service, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandlerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->get()Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method
