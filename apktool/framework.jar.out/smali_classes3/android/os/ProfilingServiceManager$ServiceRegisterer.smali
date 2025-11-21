.class public final Landroid/os/ProfilingServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "ProfilingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProfilingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOrThrow()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ProfilingServiceManager$ServiceNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Landroid/os/ProfilingServiceManager$ServiceNotFoundException;

    iget-object p0, p0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/os/ProfilingServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
