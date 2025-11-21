.class public Landroid/net/NetworkWatchlistManager;
.super Ljava/lang/Object;
.source "NetworkWatchlistManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final greylist-max-o SHARED_MEMORY_TAG:Ljava/lang/String; = "NETWORK_WATCHLIST_SHARED_MEMORY"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkWatchlistManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "network_watchlist"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method


# virtual methods
.method public greylist-max-o getWatchlistConfigHash()[B
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Unable to get watchlist config hash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist-max-o reloadWatchlist()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->reloadWatchlist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Unable to reload watchlist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public greylist-max-o reportWatchlistIfNecessary()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {p0}, Lcom/android/internal/net/INetworkWatchlistManager;->reportWatchlistIfNecessary()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "NetworkWatchlistManager"

    const-string v1, "Cannot report records"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
