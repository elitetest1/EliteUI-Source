.class public Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;
.super Ljava/lang/Object;
.source "GalaxyRegistryServiceManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "GalaxyRegistryServiceManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IGalaxyRegistryService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "galaxyregistry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IGalaxyRegistryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sepunion/GalaxyRegistryServiceManager;->mService:Lcom/samsung/android/sepunion/IGalaxyRegistryService;

    return-object p0
.end method
