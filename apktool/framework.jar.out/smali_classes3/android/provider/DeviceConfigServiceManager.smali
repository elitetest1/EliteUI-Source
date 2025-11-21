.class public Landroid/provider/DeviceConfigServiceManager;
.super Ljava/lang/Object;
.source "DeviceConfigServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;,
        Landroid/provider/DeviceConfigServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDeviceConfigUpdatableServiceRegisterer()Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance p0, Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;

    const-string v0, "device_config_updatable"

    invoke-direct {p0, v0}, Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
