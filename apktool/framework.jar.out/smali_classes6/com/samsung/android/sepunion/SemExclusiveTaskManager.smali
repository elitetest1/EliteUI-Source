.class public Lcom/samsung/android/sepunion/SemExclusiveTaskManager;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemExclusiveTaskManager"

.field private static blacklist mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

.field private static blacklist sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

.field static final blacklist sInstanceSync:Ljava/lang/Object;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    const/4 p1, -0x2

    iput p1, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mUserId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mUserId:I

    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/sepunion/SemExclusiveTaskManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x2

    :goto_1
    new-instance v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;-><init>(Landroid/content/Context;Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;I)V

    sput-object v2, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->sInstance:Lcom/samsung/android/sepunion/SemExclusiveTaskManager;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sepunion"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v0, "exclusivetask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->mService:Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    return-object p0
.end method


# virtual methods
.method public blacklist getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->getService()Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager;->getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/sepunion/SemExclusiveTaskManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to call getExclusiveTaskList()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
