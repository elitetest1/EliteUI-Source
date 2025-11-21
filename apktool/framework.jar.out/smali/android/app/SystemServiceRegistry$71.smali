.class Landroid/app/SystemServiceRegistry$71;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Lcom/samsung/android/powerSolution/powerSolutionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/powerSolution/powerSolutionManager;
    .locals 0

    const-string p0, "PowerSolution_Framework_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/powerSolution/IpowerSolution;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/powerSolution/powerSolutionManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/powerSolution/powerSolutionManager;-><init>(Lcom/samsung/android/powerSolution/IpowerSolution;)V

    return-object p1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$71;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/powerSolution/powerSolutionManager;

    move-result-object p0

    return-object p0
.end method
