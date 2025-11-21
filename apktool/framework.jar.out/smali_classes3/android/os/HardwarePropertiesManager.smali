.class public Landroid/os/HardwarePropertiesManager;
.super Ljava/lang/Object;
.source "HardwarePropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HardwarePropertiesManager$TemperatureSource;,
        Landroid/os/HardwarePropertiesManager$DeviceTemperatureType;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_TEMPERATURE_BATTERY:I = 0x2

.field public static final whitelist DEVICE_TEMPERATURE_CPU:I = 0x0

.field public static final whitelist DEVICE_TEMPERATURE_GPU:I = 0x1

.field public static final whitelist DEVICE_TEMPERATURE_SKIN:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HardwarePropertiesManager"

.field public static final whitelist TEMPERATURE_CURRENT:I = 0x0

.field public static final whitelist TEMPERATURE_SHUTDOWN:I = 0x2

.field public static final whitelist TEMPERATURE_THROTTLING:I = 0x1

.field public static final whitelist TEMPERATURE_THROTTLING_BELOW_VR_MIN:I = 0x3

.field public static final whitelist UNDEFINED_TEMPERATURE:F = -3.4028235E38f


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/os/IHardwarePropertiesManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    return-void
.end method


# virtual methods
.method public whitelist getCpuUsages()[Landroid/os/CpuUsageInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object p0, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/os/IHardwarePropertiesManager;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

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

.method public whitelist getDeviceTemperatures(II)[F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    sget-object p0, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string p1, "Unknown device temperature type."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [F

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    sget-object p0, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string p1, "Unknown device temperature source."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [F

    return-object p0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object p0, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/os/IHardwarePropertiesManager;->getDeviceTemperatures(Ljava/lang/String;II)[F

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

.method public whitelist getFanSpeeds()[F
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object p0, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/os/IHardwarePropertiesManager;->getFanSpeeds(Ljava/lang/String;)[F

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
