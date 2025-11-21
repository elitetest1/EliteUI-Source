.class public Lcom/samsung/android/sepunion/DexModeManagers;
.super Ljava/lang/Object;
.source "DexModeManagers.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DexModeManagers"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/sepunion/IDexModeService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/DexModeManagers;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IDexModeService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/DexModeManagers;->mService:Lcom/samsung/android/sepunion/IDexModeService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sepunion/DexModeManagers;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "DesktopModeServiceForTV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IDexModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IDexModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/DexModeManagers;->mService:Lcom/samsung/android/sepunion/IDexModeService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sepunion/DexModeManagers;->mService:Lcom/samsung/android/sepunion/IDexModeService;

    return-object p0
.end method
