.class final Landroid/service/dreams/DreamService$DefaultInjector;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/service/dreams/DreamService$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultInjector"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createOverlayConnection(Landroid/content/ComponentName;Ljava/lang/Runnable;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .locals 3

    new-instance v0, Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/service/dreams/DreamOverlayConnectionHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public blacklist getDreamActivityComponent()Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/service/dreams/DreamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamComponent()Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 0

    const-string p0, "dreams"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDreamPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService$DefaultInjector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWakefulHandler()Landroid/service/dreams/DreamService$WakefulHandler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$WakefulHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    return-void
.end method
