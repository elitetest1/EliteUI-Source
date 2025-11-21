.class Landroid/app/SystemServiceRegistry$24;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/location/CountryDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/location/CountryDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string p0, "country_detector"

    invoke-static {p0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    new-instance v0, Landroid/location/CountryDetector;

    invoke-static {p0}, Landroid/location/ICountryDetector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/location/CountryDetector;-><init>(Landroid/location/ICountryDetector;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$24;->createService()Landroid/location/CountryDetector;

    move-result-object p0

    return-object p0
.end method
