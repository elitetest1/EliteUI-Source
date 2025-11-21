.class public Lcom/samsung/android/sepunion/SemPluginManager;
.super Ljava/lang/Object;
.source "SemPluginManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemPluginManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IPluginManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IPluginManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string/jumbo v1, "plugin"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IPluginManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sepunion/SemPluginManager;->mService:Lcom/samsung/android/sepunion/IPluginManager;

    return-object p0
.end method


# virtual methods
.method public blacklist getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManager;->getService()Lcom/samsung/android/sepunion/IPluginManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sepunion/IPluginManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
