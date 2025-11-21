.class public Landroid/os/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DeviceIdleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-void
.end method


# virtual methods
.method public whitelist endIdle(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, p1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method blacklist getService()Landroid/os/IDeviceIdleController;
    .locals 0

    iget-object p0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-object p0
.end method

.method public blacklist getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

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

.method public blacklist getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

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
