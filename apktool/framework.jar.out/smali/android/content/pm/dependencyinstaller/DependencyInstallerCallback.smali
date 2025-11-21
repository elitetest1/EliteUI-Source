.class public final Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;
.super Ljava/lang/Object;
.source "DependencyInstallerCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback$1;

    invoke-direct {v0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback$1;-><init>()V

    sput-object v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onAllDependenciesResolved([I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    invoke-interface {p0, p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->onAllDependenciesResolved([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist onFailureToResolveAllDependencies()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    invoke-interface {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->onFailureToResolveAllDependencies()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
