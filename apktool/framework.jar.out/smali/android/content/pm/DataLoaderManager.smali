.class public Landroid/content/pm/DataLoaderManager;
.super Ljava/lang/Object;
.source "DataLoaderManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field private final blacklist mService:Landroid/content/pm/IDataLoaderManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/IDataLoaderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    return-void
.end method


# virtual methods
.method public blacklist bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface/range {p0 .. p5}, Landroid/content/pm/IDataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist getDataLoader(I)Landroid/content/pm/IDataLoader;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IDataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist unbindFromDataLoader(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IDataLoaderManager;->unbindFromDataLoader(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
