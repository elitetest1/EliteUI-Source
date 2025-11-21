.class public Lcom/samsung/android/aod/AODManager;
.super Ljava/lang/Object;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;,
        Lcom/samsung/android/aod/AODManager$AODDozeCallback;,
        Lcom/samsung/android/aod/AODManager$AODDozeLock;,
        Lcom/samsung/android/aod/AODManager$AODChangeListener;
    }
.end annotation


# static fields
.field public static final blacklist AOD_MANAGER_VERSION:I = 0x4

.field public static final blacklist AOD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.aodservice"

.field public static final blacklist INTERVAL_100:I = 0x0

.field public static final blacklist INTERVAL_1000:I = 0x3

.field public static final blacklist INTERVAL_200:I = 0x1

.field public static final blacklist INTERVAL_500:I = 0x2

.field public static final blacklist INTERVAL_DEBUG:I = 0x3e7

.field public static final blacklist ROTATE_0:I = 0x0

.field public static final blacklist ROTATE_180:I = 0x2

.field public static final blacklist ROTATE_270:I = 0x3

.field public static final blacklist ROTATE_90:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AODManager"

.field public static final blacklist TYPE_ACTIVE_ANALOG_IMAGE:I = 0x2

.field public static final blacklist TYPE_ACTIVE_DIGITAL_IMAGE:I = 0x3

.field public static final blacklist TYPE_ACTIVE_ICON_IMAGE:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/aod/AODManager;


# instance fields
.field private blacklist mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAODCallbackLock:Ljava/lang/Object;

.field private blacklist mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/aod/IAODManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Lcom/samsung/android/aod/AODManager;)Lcom/samsung/android/aod/IAODManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/aod/AODManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/aod/AODManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/aod/AODManager;->sInstance:Lcom/samsung/android/aod/AODManager;

    return-object v0
.end method

.method private blacklist getService()Lcom/samsung/android/aod/IAODManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_0

    const-string v0, "AODManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v0, :cond_1

    const-string v0, "AODManager"

    const-string v1, "getService fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object p0
.end method


# virtual methods
.method public blacklist addLogText(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/aod/IAODManager;->addLogText(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist getActiveImageInfo()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0}, Lcom/samsung/android/aod/IAODManager;->getActiveImageInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AODManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public blacklist getAodActiveArea(Z)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const-string v1, "NG"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/aod/IAODManager;->getAodActiveArea(Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public blacklist isAODState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0}, Lcom/samsung/android/aod/IAODManager;->isAODState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AODManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist isSViewCoverBrightnessHigh()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0}, Lcom/samsung/android/aod/IAODManager;->isSViewCoverBrightnessHigh()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AODManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist readyToScreenTurningOn()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0}, Lcom/samsung/android/aod/IAODManager;->readyToScreenTurningOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AODManagerService RuntimeException?\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AODManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist registerAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AODManager"

    if-nez p1, :cond_1

    const-string/jumbo p0, "registerAODDozeCallback: callback is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const-string/jumbo p0, "registerAODDozeCallback: listener already registered"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist registerAODListener(Lcom/samsung/android/aod/AODListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "AODManager"

    const-string/jumbo p1, "registerAODListener : listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/aod/AODListener;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;-><init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODListener;)V

    iget-object p1, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, v1}, Lcom/samsung/android/aod/IAODManager;->registerAODListener(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "AODManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :cond_4
    const-string p0, "AODManager"

    const-string/jumbo p1, "registerAODListener : listener already registered"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist requestAODToast(Lcom/samsung/android/aod/AODToast;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/aod/IAODManager;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setGripData(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/aod/IAODManager;->setGripData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setLiveClockCommand(III[I)I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockCommand(III[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist setLiveClockImage(II[BLjava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist setLiveClockInfo(IJJJJJJJJ)I
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v0, p0

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    invoke-interface/range {v2 .. v19}, Lcom/samsung/android/aod/IAODManager;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AODManagerService RuntimeException?\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AODManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist setLiveClockNeedle([B)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/aod/IAODManager;->setLiveClockNeedle([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist unregisterAODDozeCallback(Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "AODManager"

    if-nez p1, :cond_1

    const-string/jumbo p0, "unregisterAODDozeCallback: callback is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    if-nez p1, :cond_2

    const-string/jumbo p0, "unregisterAODDozeCallback: not registered yet"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/aod/IAODManager;->unregisterAODDozeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mAODDozeCallbackDelegate:Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;

    :goto_1
    return-void
.end method

.method public blacklist unregisterAODListener(Lcom/samsung/android/aod/AODListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "AODManager"

    const-string/jumbo p1, "unregisterAODListener : listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->getListener()Lcom/samsung/android/aod/AODListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/aod/AODListener;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    const-string p0, "AODManager"

    const-string/jumbo p1, "unregisterAODListener : cannot find the listener"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {p1, v2}, Lcom/samsung/android/aod/IAODManager;->unregisterAODListener(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mAODCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "AODManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AODManagerService RuntimeException?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist updateAODNotiTspRect(IIII)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    const-string v6, "com.samsung.android.app.aodservice"

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODNotiTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist updateAODNotiTspRect(IIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/aod/IAODManager;->updateAODNotiTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist updateAODTspRect(IIII)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    const-string v6, "com.samsung.android.app.aodservice"

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist updateAODTspRect(IIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/aod/IAODManager;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AODManagerService RuntimeException?\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AODManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
