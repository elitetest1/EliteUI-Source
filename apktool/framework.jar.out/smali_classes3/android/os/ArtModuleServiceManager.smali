.class public Landroid/os/ArtModuleServiceManager;
.super Ljava/lang/Object;
.source "ArtModuleServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getArtdPreRebootServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .locals 2

    new-instance p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v0, "artd_pre_reboot"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public blacklist getArtdServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .locals 2

    new-instance p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v0, "artd"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public blacklist getDexoptChrootSetupServiceRegisterer()Landroid/os/ArtModuleServiceManager$ServiceRegisterer;
    .locals 2

    new-instance p0, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;

    const-string v0, "dexopt_chroot_setup"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/ArtModuleServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method
