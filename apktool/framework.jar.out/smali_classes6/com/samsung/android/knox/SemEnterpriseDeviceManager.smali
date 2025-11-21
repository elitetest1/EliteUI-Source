.class public Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "SemEnterpriseDeviceManager.java"


# static fields
.field private static greylist TAG:Ljava/lang/String; = "SemEnterpriseDeviceManager"

.field private static volatile greylist mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;


# instance fields
.field private final greylist mContext:Landroid/content/Context;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static greylist createInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private greylist safeBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method private greylist safePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public whitelist getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/sec/enterprise/IEDMProxy;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :goto_0
    invoke-interface {p0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public greylist setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->safePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->safeBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0, p3}, Landroid/sec/enterprise/IEDMProxy;->setKeyedAppStatesReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
