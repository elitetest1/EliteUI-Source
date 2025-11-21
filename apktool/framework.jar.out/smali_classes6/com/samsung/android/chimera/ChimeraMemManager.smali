.class public Lcom/samsung/android/chimera/ChimeraMemManager;
.super Ljava/lang/Object;
.source "ChimeraMemManager.java"


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "ChimeraMemManager"

.field private static final greylist mLock:Ljava/lang/Object;

.field private static greylist sService:Lcom/samsung/android/chimera/IChimera;


# instance fields
.field private greylist mContext:Landroid/content/Context;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/chimera/ChimeraMemManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/chimera/ChimeraMemManager;->getService()Lcom/samsung/android/chimera/IChimera;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/samsung/android/chimera/IChimera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/chimera/ChimeraMemManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/chimera/ChimeraMemManager;->setService(Lcom/samsung/android/chimera/IChimera;)V

    return-void
.end method

.method private greylist getService()Lcom/samsung/android/chimera/IChimera;
    .locals 1

    sget-object p0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    if-nez v0, :cond_0

    const-string v0, "ChimeraManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/chimera/IChimera$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/chimera/IChimera;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    :cond_0
    sget-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static greylist setService(Lcom/samsung/android/chimera/IChimera;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/chimera/ChimeraMemManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/samsung/android/chimera/ChimeraMemManager;->sService:Lcom/samsung/android/chimera/IChimera;

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
.method public greylist getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/chimera/PSIAvailableMem;",
            ">;"
        }
    .end annotation

    const-string v0, "getAvailableMemInfo  startTime="

    :try_start_0
    const-string v1, "ChimeraMemManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " endTime"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/chimera/ChimeraMemManager;->getService()Lcom/samsung/android/chimera/IChimera;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/chimera/IChimera;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
