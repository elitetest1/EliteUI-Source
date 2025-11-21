.class Landroid/app/SystemServiceRegistry$176;
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
        "Landroid/security/intrusiondetection/IntrusionDetectionManager;",
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
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "intrusion_detection"

    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionService;

    move-result-object p0

    new-instance p1, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    invoke-direct {p1, p0}, Landroid/security/intrusiondetection/IntrusionDetectionManager;-><init>(Landroid/security/intrusiondetection/IIntrusionDetectionService;)V

    return-object p1

    :cond_0
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string p1, "Intrusion Detection is not supported"

    invoke-direct {p0, p1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$176;->createService(Landroid/app/ContextImpl;)Landroid/security/intrusiondetection/IntrusionDetectionManager;

    move-result-object p0

    return-object p0
.end method
