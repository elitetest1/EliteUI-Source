.class public Lcom/samsung/android/wifi/stdp/StandardPlusManager;
.super Ljava/lang/Object;
.source "StandardPlusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;,
        Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/stdp/IStandardPlusManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public blacklist disableUsdNearby(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->disableUsdNearby(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist enableUsdNearby(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->enableUsdNearby(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist registerCallback(Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;

    iget-object v1, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$StandardPlusCallbackProxy;-><init>(Lcom/samsung/android/wifi/stdp/StandardPlusManager;Landroid/os/Looper;Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;->hashCode()I

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->registerCallback(ILcom/samsung/android/wifi/stdp/IStandardPlusCallback;)Z

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

.method public blacklist startBleScan()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->startBleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist stopBleAdvertising()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->stopBleAdvertising()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist stopBleScan()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p0}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->stopBleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist unregisterCallback(Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wifi/stdp/StandardPlusManager;->mService:Lcom/samsung/android/wifi/stdp/IStandardPlusManager;

    invoke-interface {p1}, Lcom/samsung/android/wifi/stdp/StandardPlusManager$EventListener;->hashCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/stdp/IStandardPlusManager;->unregisterCallback(I)Z

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
