.class public Lcom/samsung/android/sepunion/SemCustomDumpManager;
.super Ljava/lang/Object;
.source "SemCustomDumpManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemCustomDumpManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IUnionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IUnionManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    const-string v1, "IUnionManager is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    return-object p0
.end method


# virtual methods
.method public whitelist setDumpState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "setDumpState : "

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sepunion/IUnionManager;->setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
