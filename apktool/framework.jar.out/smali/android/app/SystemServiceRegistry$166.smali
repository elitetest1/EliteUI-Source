.class Landroid/app/SystemServiceRegistry$166;
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
        "Lcom/samsung/android/knox/SemRemoteContentManager;",
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
.method public blacklist createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 0

    const-string/jumbo p0, "rcp"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-static {p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemRemoteContentManager;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/SemRemoteContentManager;-><init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V

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

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$166;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object p0

    return-object p0
.end method
