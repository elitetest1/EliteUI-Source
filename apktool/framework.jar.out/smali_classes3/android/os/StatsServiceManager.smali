.class public Landroid/os/StatsServiceManager;
.super Ljava/lang/Object;
.source "StatsServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsServiceManager$ServiceRegisterer;,
        Landroid/os/StatsServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getStatsCompanionServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "statscompanion"

    invoke-direct {p0, v0}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getStatsManagerServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "statsmanager"

    invoke-direct {p0, v0}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getStatsdServiceRegisterer()Landroid/os/StatsServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/StatsServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "stats"

    invoke-direct {p0, v0}, Landroid/os/StatsServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
