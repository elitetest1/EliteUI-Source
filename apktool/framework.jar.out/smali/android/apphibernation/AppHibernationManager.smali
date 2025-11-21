.class public Landroid/apphibernation/AppHibernationManager;
.super Ljava/lang/Object;
.source "AppHibernationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppHibernationManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    const-string p1, "app_hibernation"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;

    move-result-object p1

    iput-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    return-void
.end method


# virtual methods
.method public whitelist getHibernatingPackagesForUser()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/apphibernation/IAppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

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

.method public whitelist getHibernationStatsForUser()Ljava/util/Map;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

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

.method public whitelist getHibernationStatsForUser(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

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

.method public whitelist isHibernatingForUser(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/apphibernation/IAppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {p0, p1}, Landroid/apphibernation/IAppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isOatArtifactDeletionEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {p0}, Landroid/apphibernation/IAppHibernationService;->isOatArtifactDeletionEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setHibernatingForUser(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p1, p0, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {p0, p1, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
