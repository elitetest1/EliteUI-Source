.class public abstract Landroid/content/pm/dependencyinstaller/DependencyInstallerService;
.super Landroid/app/Service;
.source "DependencyInstallerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;

    invoke-direct {p1, p0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;-><init>(Landroid/content/pm/dependencyinstaller/DependencyInstallerService;)V

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    :cond_0
    iget-object p0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-interface {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public abstract whitelist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;",
            ")V"
        }
    .end annotation
.end method
