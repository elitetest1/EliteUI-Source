.class public Landroid/os/ProfilingServiceManager;
.super Ljava/lang/Object;
.source "ProfilingServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProfilingServiceManager$ServiceRegisterer;,
        Landroid/os/ProfilingServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getProfilingServiceRegisterer()Landroid/os/ProfilingServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/ProfilingServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "profiling_service"

    invoke-direct {p0, v0}, Landroid/os/ProfilingServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
