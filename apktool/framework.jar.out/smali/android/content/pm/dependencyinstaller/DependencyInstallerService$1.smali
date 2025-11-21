.class Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;
.super Landroid/content/pm/dependencyinstaller/IDependencyInstallerService$Stub;
.source "DependencyInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/dependencyinstaller/DependencyInstallerService;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/dependencyinstaller/DependencyInstallerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;->this$0:Landroid/content/pm/dependencyinstaller/DependencyInstallerService;

    invoke-direct {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
    .locals 0
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

    iget-object p0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;->this$0:Landroid/content/pm/dependencyinstaller/DependencyInstallerService;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V

    return-void
.end method
