.class Landroid/os/ServiceManagerProxy;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;

.field private blacklist mServiceManager:Landroid/os/IServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/ServiceManagerProxy;->getNativeServiceManager()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object p1

    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    return-void
.end method

.method private native blacklist getNativeServiceManager()Landroid/os/IBinder;
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object p0

    iget-object p0, p0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist checkService2(Ljava/lang/String;)Landroid/os/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object p0

    iget-object p0, p0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getService2(Ljava/lang/String;)Landroid/os/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/ServiceManagerProxy;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isDeclared(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist listServices(I)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1, p2}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    return-void
.end method

.method public blacklist tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public blacklist unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public blacklist updatableViaApex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {p0, p1}, Landroid/os/IServiceManager;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
