.class public final Landroid/se/omapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.Reader"


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mReader:Landroid/se/omapi/ISecureElementReader;

.field private final greylist-max-o mService:Landroid/se/omapi/SEService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    iput-object p3, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist closeSessions()V
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OMAPI.Reader"

    const-string/jumbo v0, "service is not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {p0}, Landroid/se/omapi/ISecureElementReader;->closeSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSEService()Landroid/se/omapi/SEService;
    .locals 0

    iget-object p0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    return-object p0
.end method

.method public whitelist isSecureElementPresent()Z
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {p0}, Landroid/se/omapi/ISecureElementReader;->isSecureElementPresent()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error in isSecureElementPresent()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "service is not connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist openSession()Landroid/se/omapi/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Landroid/se/omapi/Session;

    iget-object v3, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, v1, p0}, Landroid/se/omapi/Session;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v1, "service session is null."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "service is not connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist reset()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "OMAPI.Reader"

    const-string/jumbo v0, "service is not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/se/omapi/Reader;->closeSessions()V

    iget-object p0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {p0}, Landroid/se/omapi/ISecureElementReader;->reset()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
